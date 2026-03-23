-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

vim.keymap.set('n', 'q', '<Nop>', { noremap = true, silent = true })

--- Enable OSC 52 for copying to system clipboard in SSH
-- See: https://github.com/neovim/neovim/issues/28611#issuecomment-2147744670
if os.getenv "SSH_TTY" then
    vim.g.clipboard = {
        name = "OSC 52",
        -- Try to use OSC 52 escape sequences to copy to system clipboard
        -- It should not break anything if it’s not supported
        copy = {
            ["+"] = require("vim.ui.clipboard.osc52").copy "+",
            ["*"] = require("vim.ui.clipboard.osc52").copy "*",
        },
        -- Disable paste since it does not work in some terminals,
        -- i.e., xterm.js (many app based on Web tech use this)
        paste = {
            ["+"] = function(_)
                return vim.split(vim.fn.getreg '"', "\n")
            end,
            ["*"] = function(_)
                return vim.split(vim.fn.getreg '"', "\n")
            end,
        },
    }
end
