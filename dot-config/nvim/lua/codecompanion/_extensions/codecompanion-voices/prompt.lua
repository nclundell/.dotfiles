local voices = require("codecompanion._extensions.codecompanion-voices.voices")

return function(original_system_prompt)
  return function(args)
    local base_prompt = original_system_prompt(args)
    local voice = vim.g.codecompanion_voice or "default"
    local instructions = voices[voice] and voices[voice].instructions or ""
    return base_prompt .. "\n\n" .. instructions
  end
end
