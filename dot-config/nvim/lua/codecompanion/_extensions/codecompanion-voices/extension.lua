local voices = require("codecompanion._extensions.codecompanion-voices.voices")
local prompt_wrapper = require("codecompanion._extensions.codecompanion-voices.prompt")
local picker = require("codecompanion._extensions.codecompanion-voices.pickers")

local function deep_merge(tbl1, tbl2)
  for k, v in pairs(tbl2) do
    if type(v) == "table" and type(tbl1[k]) == "table" then
      deep_merge(tbl1[k], v)
    else
      tbl1[k] = v
    end
  end
end

local M = {}

function M.setup(opts)
  opts = opts or {}

  if type(opts.voices) == "table" then
    for key, voice in pairs(opts.voices) do
      if type(voices[key]) == "table" and type(voice) == "table" then
        deep_merge(voices[key], voice)
      else
        voices[key] = voice
      end
    end
  end

  vim.schedule(function()
    local config = require("codecompanion.config")
    -- Store the original system_prompt only once
    if not config.strategies.chat.opts._original_system_prompt then
      local orig_prompt = config.strategies.chat.opts.system_prompt
      if type(orig_prompt) ~= "function" then
        local prompt_str = orig_prompt
        orig_prompt = function(_) return prompt_str end
      end
      config.strategies.chat.opts._original_system_prompt = orig_prompt
    end

    -- Always wrap the original, never the already-wrapped
    config.strategies.chat.opts.system_prompt =
      prompt_wrapper(config.strategies.chat.opts._original_system_prompt)

    -- Register the keymap here
    vim.keymap.set("n", "<leader>cv", function()
      local items = {}
      for key, v in pairs(voices) do
        table.insert(items, { label = v.name, key = key })
      end
      table.sort(items, function(a, b) return a.label < b.label end)
      picker.select(items, {
        prompt = "Choose a voice for CodeCompanion:",
        format_item = function(item) return item.label end,
      }, function(choice)
        if choice then
          vim.g.codecompanion_voice = choice.key
          vim.notify("Voice set to: " .. voices[choice.key].name, vim.log.levels.INFO)
          -- Always wrap the original, not the already-wrapped
          local config = require("codecompanion.config")
          config.strategies.chat.opts.system_prompt =
            require("codecompanion._extensions.codecompanion-voices.prompt")(
              config.strategies.chat.opts._original_system_prompt
            )
          -- Start a new chat buffer
          local ok, Chat = pcall(require, "codecompanion.strategies.chat")
          if ok and Chat and Chat.new then
            -- Count existing chats with this voice
            local chatmap = Chat.buf_get_chat()
            local voice = voices[vim.g.codecompanion_voice or "default"] or voices.default
            local count = 0
            for _, chat_entry in ipairs(chatmap) do
              if chat_entry.name and chat_entry.name:match("^" .. voice.name .. " Chat") then
                count = count + 1
              end
            end

            -- Prepare args, copying from last chat if available
            local args = {
              name = voice.name .. " Chat " .. (count + 1),
              intro_message = voice.intro_message or "Now using the " .. voice.name .. " voice!",
            }

            local chat = Chat.new(args)
            if chat then
              -- Set buffer name
              if args.name then
                vim.api.nvim_buf_set_name(chat.bufnr, args.name)
              end
              if chat.update_metadata then
                chat:update_metadata()
              end
            else
              vim.notify("Could not start a new chat. Please check CodeCompanion installation.", vim.log.levels.ERROR)
            end
          else
            vim.notify("Could not start a new chat. Please check CodeCompanion installation.", vim.log.levels.ERROR)
          end
        end
      end)
    end, { desc = "Select CodeCompanion Voice" })
  end)
end

M.setup()

return M
