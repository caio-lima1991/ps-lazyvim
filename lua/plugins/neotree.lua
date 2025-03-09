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
            position = "float",
          })
        end,
        desc = "NeoTree Float",
      },
      {
        "<leader>be",
        function()
          require("neo-tree.command").execute({
            source = "buffers",
            toggle = true,
            reveal = true,
            position = "float",
          })
        end,
        desc = "NeoTree Float",
      },
      {
        "<leader>ge",
        function()
          require("neo-tree.command").execute({
            source = "git_status",
            toggle = true,
            reveal = true,
            position = "float",
          })
        end,
        desc = "NeoTree Float",
      },
    },
  },
}
