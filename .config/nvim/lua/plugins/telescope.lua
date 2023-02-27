local telescope = require('telescope')
local themes = require('telescope.themes')

telescope.setup{
  defaults = themes.get_ivy({
    layout_strategy = 'bottom_pane',
    results_title = false,
    preview = false,
  }),

  extensions = {
    ["ui-select"] = {
      themes.get_dropdown {}

      -- pseudo code / specification for writing custom displays, like the one
      -- for "codeactions"
      -- specific_opts = {
      --   [kind] = {
      --     make_indexed = function(items) -> indexed_items, width,
      --     make_displayer = function(widths) -> displayer
      --     make_display = function(displayer) -> function(e)
      --     make_ordinal = function(e) -> string
      --   },
      --   -- for example to disable the custom builtin "codeactions" display
      --      do the following
      --   codeactions = false,
      -- }
    }
  }
}

telescope.load_extension("ui-select")
