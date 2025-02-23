return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    keys = {
      {
        "<leader>fe",
        function()
          require("neo-tree.command").execute({
            source = "filesystem",
            toggle = true,
            reveal = true,
            position = "current",
          })
        end,
        desc = "NeoTree Fullscreen",
      },
      {
        "<leader>be",
        function()
          require("neo-tree.command").execute({
            source = "buffers",
            toggle = true,
            reveal = true,
            position = "current",
          })
        end,
        desc = "NeoTree Fullscreen",
      },
      {
        "<leader>ge",
        function()
          require("neo-tree.command").execute({
            source = "git_status",
            toggle = true,
            reveal = true,
            position = "current",
          })
        end,
        desc = "NeoTree Fullscreen",
      },
    },
  },
}
