
local M = {}

local userPlugins = require "custom.plugins" -- path to table

M.ui = {
   theme = "gruvbox",
   transparency = "false",
}

M.plugins = {

   status = {
     colorizer = true,
     snippets = true,
   },

   options = {

    statusline = {

         hidden = {
            "help",
            "dashboard",
            "NvimTree",
            "terminal",
         },
         -- show short statusline on small screens
         shortline = true,
         shown = {},
         -- default, round , slant , block , arrow
         style = "block",
      },

      lspconfig = {
         setup_lspconf = "custom.plugins.lspconfig",
      },
   },

    install = userPlugins,
}

return M
