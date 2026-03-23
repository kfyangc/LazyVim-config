-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- 引用 keymap 设置函数
local keymap = vim.keymap

-- 复制到系统剪贴板 (普通模式和可视模式)
keymap.set({ "n", "v" }, "<leader>y", [["+y]], { desc = "复制到系统剪贴板" })
-- 复制整行到系统剪贴板
keymap.set("n", "<leader>Y", [["+Y]], { desc = "复制整行到系统剪贴板" })

-- 从系统剪贴板粘贴 (普通模式和可视模式)
keymap.set({ "n", "v" }, "<leader>p", [["+p]], { desc = "从系统剪贴板粘贴" })
-- 这里的 P 是为了处理粘贴后不换行等特殊情况，也可以加上
keymap.set({ "n", "v" }, "<leader>P", [["+P]], { desc = "从系统剪贴板向上粘贴" })
