return {
    "stevearc/conform.nvim",
    opts = {
      formatters_by_ft = {
        lua = { "stylua" },
        python = { "black", "isort" },
        javascript = { "prettierd", "eslint_d" },
        typescript = { "prettierd", "eslint_d" },
        java = { "astyle" },
      },
      format_on_save = {
        lsp_fallback = true,
        async = false,
        timeout_ms = 1000,
      },
      -- Você pode adicionar outras opções de configuração do conform aqui, se desejar.
    },
}