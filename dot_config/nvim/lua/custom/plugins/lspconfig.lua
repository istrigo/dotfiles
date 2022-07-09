local M = {}

M.setup_lsp = function(attach, capabilities)
  local lspconfig = require "lspconfig"

   -- lspservers with default config

   local servers = { "texlab" }

   for _, lsp in ipairs(servers) do
     lspconfig[lsp].setup {
       on_attach = attach,
       capabilities = capabilities,
       flags = {
         debounce_text_changes = 150,
       },
     }
   end

lspconfig.texlab.setup {
     on_attach = function(client, bufnr)
        client.resolved_capabilities.document_formatting = false
        vim.api.nvim_buf_set_keymap(bufnr, "n", "<space>fm", "<cmd>lua vim.lsp.buf.formatting()<CR>", {})
     end,
   }

-- lspconfig.eslint.setup({
--   bin = 'eslint', -- or `eslint_d`
--   code_actions = {
--     enable = true,
--     apply_on_save = {
--       enable = true,
--       types = { "problem" }, -- "directive", "problem", "suggestion", "layout"
--     },
--     disable_rule_comment = {
--       enable = true,
--       location = "separate_line", -- or `same_line`
--     },
--   },
--   diagnostics = {
--     enable = true,
--     report_unused_disable_directives = false,
--     run_on = "type", -- or `save`
--   },
-- })


 end

return M
