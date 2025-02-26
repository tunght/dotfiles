return {
  "nvimtools/none-ls.nvim",
  config = function()
    local null_ls = require("null-ls")
    null_ls.setup({
      sources = {
        null_ls.builtins.formatting.stylua,
        null_ls.builtins.formatting.prettier,
        null_ls.builtins.formatting.stylelint,
        null_ls.builtins.formatting.yamlfmt,
        null_ls.builtins.formatting.leptosfmt,

        vim.keymap.set("n", "<leader>cf", vim.lsp.buf.format, {}),
      },
    })
  end,
}
