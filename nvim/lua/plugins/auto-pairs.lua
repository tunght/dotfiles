return {
  "windwp/nvim-autopairs",
  event = "InsertEnter",
  dependency = {
   "windwp/nvim-autopairs",
  },
  config = function()
    local autopairs = require('nvim-autopairs')
    autopairs.setup({
      check_ts = true,
      ts_config = {
        lua = { "string" },
        javascript = { "tempate_string" },
        java = false,
      }
    })

    local cmp_autopairs = require('nvim-autopairs.completion.cmp')
    local cmp = require('cmp')
    cmp.event:on("confirm_done", cmp_autopairs.on_confirm_done())

  end
}
