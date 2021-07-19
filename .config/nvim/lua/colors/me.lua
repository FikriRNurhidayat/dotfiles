if package.loaded['github-theme'] == nil then
  vim.cmd("highlight TelescopeBorder         guifg=#ffffff")
  vim.cmd("highlight TelescopePromptBorder   guifg=#ffffff")
  vim.cmd("highlight TelescopeResultsBorder  guifg=#ffffff")
  vim.cmd("highlight TelescopePreviewBorder  guifg=#ffffff")
  vim.cmd("highlight TelescopeMatching       guifg=blue")
  vim.cmd("highlight TelescopePromptPrefix   guifg=#ffffff")
else
  local configuration = require("github-theme.config")
  local util = require("github-theme.util")
  local config = configuration.config
  local protocol = vim.lsp.protocol

  config.themeStyle = configuration.getThemeStyle()
  local colors = require("github-theme.colors").setup(config)

  -- Telescope
  util.highlight("TelescopeBorder", { fg = colors.line_nr })
  util.highlight("TelescopePromptBorder", { fg = colors.line_nr })
  util.highlight("TelescopeResultsBorder", { fg = colors.line_nr })
  util.highlight("TelescopePreviewBorder", { fg = colors.line_nr })
  util.highlight("TelescopePromptPrefix", { fg = colors.line_nr })
  util.highlight("TelescopeSelectionPrefix", { fg = colors.line_nr })

  -- Completion Icons
  protocol.CompletionItemKind = {
    '', -- Text
    '', -- Method
    '', -- Function
    '', -- Constructor
    '', -- Field
    '', -- Variable
    '', -- Class
    'ﰮ', -- Interface
    '', -- Module
    '', -- Property
    '', -- Unit
    '', -- Value
    '', -- Enum
    '', -- Keyword
    '﬌', -- Snippet
    '', -- Color
    '', -- File
    '', -- Reference
    '', -- Folder
    '', -- EnumMember
    '', -- Constant
    '', -- Struct
    '', -- Event
    'ﬦ', -- Operator
    '', -- TypeParameter
  }
end
