-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

vim.opt.spelllang = "en,cjk" -- 只检查英文

-- 禁用自动同步系统剪贴板
vim.opt.clipboard = ""

vim.opt.tabstop = 4      -- 一个 <Tab> 等于 4 个空格
vim.opt.shiftwidth = 4   -- 缩进级别（按 >> 或 << 时移动的空格数）
vim.opt.softtabstop = 4  -- 输入 <Tab> 时的空格数
vim.opt.expandtab = true -- 用空格代替 tab 字符
