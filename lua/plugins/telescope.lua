return {
  require("telescope").setup({
    defaults = {
      path_display = function(_, path)
        local tail = require("telescope.utils").path_tail(path)
        return string.format("%s (%s)", tail, path)
      end,
    },
  }),
}
