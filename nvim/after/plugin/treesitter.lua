require'nvim-treesitter.configs'.setup {
  -- A list of parser names, or "all" (the five listed parsers should always be installed)
  ensure_installed = {'nix', 'vim', 'bash', 'lua', 'json', 'html', 'css', 'php'},

  -- Install parsers synchronously (only applied to `ensure_installed`)
  -- sync_install = false,
  auto_install = false,
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },
}

