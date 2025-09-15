local ok, fzf = pcall(require, "fzf-lua")
if not ok then return nil end

return function(items, opts, on_choice)
  local entry_maker = opts.format_item or function(item) return tostring(item) end
  local choices = {}
  for i, item in ipairs(items) do
    choices[i] = entry_maker(item)
  end

  fzf.fzf_exec(choices, {
    prompt = (opts.prompt or "Select: ") .. " ",
    actions = {
      ["default"] = function(selected)
        local sel = selected[1]
        for idx, choice in ipairs(choices) do
          if choice == sel then
            on_choice(items[idx], idx)
            return
          end
        end
        on_choice(nil, nil)
      end,
      ["esc"] = function() on_choice(nil, nil) end,
    },
  })
end
