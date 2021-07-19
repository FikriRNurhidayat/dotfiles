require('nvim-web-devicons').setup({
  override = {
    ["test.js"] = {
      icon = "ﭧ",
      color = "#cbcb41",
      name = "JsTest"
    },
    ["spec.js"] = {
      icon = "",
      color = "#cbcb41",
      name = "JsSpec"
    },
    ["md"] = {
      icon = "",
      name = "Markdown"
    },
    [".npmrc"] = {
      icon = "ﯵ",
      name = "NPM"
    },
  },
  default = true
})
