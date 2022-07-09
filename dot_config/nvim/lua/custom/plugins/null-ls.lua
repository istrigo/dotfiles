local null_ls = require "null-ls"
local b = null_ls.builtins

local sources = {

   b.formatting.prettierd.with { filetypes = { "html", "markdown", "css", "tex", "javascript" } },
   b.formatting.deno_fmt,

   -- Lua
   b.formatting.stylua,
   b.diagnostics.luacheck.with { extra_args = { "--global vim" } },

   -- Shell
   b.formatting.shfmt,
   b.diagnostics.shellcheck.with { diagnostics_format = "#{m} [#{c}]" },

   b.formatting.latexindent,
   b.diagnostics.chktex.with { diagnostics_format = "#{m} [#{c}]" },

   -- JS
   b.diagnostics.eslint,
   b.code_actions.eslint,
   b.formatting.prettier,
}

null_ls.setup {
      debug = true,
      sources = sources,
   }

