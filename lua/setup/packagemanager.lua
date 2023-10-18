local lazypath = vim.fn.stdpath 'data' .. '/lazy/lazy.nvim'
if not vim.loop.fs_stat(lazypath) then
  local success = pcall(vim.fn.system, {
    'git',
    'clone',
    '--filter=blob:none',
    'https://github.com/folke/lazy.nvim.git',
    '--branch=stable',
    lazypath,
  })
  if not success then
    print("Error cloning lazy.nvim")
  end
end
vim.opt.rtp:prepend(lazypath)
