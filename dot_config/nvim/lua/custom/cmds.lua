vim.cmd[[autocmd VimLeave *.tex :VimtexClean]]

vim.cmd[[autocmd BufNewFile *.tex 0r ~/.config/nvim/templates/skeleton.tex ]]

vim.cmd[[autocmd BufRead,BufNewFile Xresources,Xdefaults,xresources,xdefaults set filetype=xdefaults ]]

vim.cmd[[autocmd BufWritePost Xresources,Xdefaults,xresources,xdefaults !xrdb % ]]

vim.cmd[[autocmd BufWritePost ~/.local/src/dwmblocks/config.h !cd ~/.local/src/dwmblocks/; sudo make install && { killall -q dwmblocks;setsid -f dwmblocks } ]]

vim.cmd[[autocmd BufWritePost ~/.local/src/dwm/config.h !cd ~/.local/src/dwm/; sudo make install && { kill -HUP $(pgrep -u "$USER" "\bdwm$") } ]]

vim.cmd[[autocmd BufWritePost ~/.local/src/st/config.h !cd ~/.local/src/st/; sudo make install ]]

vim.cmd[[autocmd BufWritePost ~/.local/src/dmenu/config.h !cd ~/.local/src/dmenu/; sudo make install ]]





