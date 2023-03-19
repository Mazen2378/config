require('lualine').setup {
  options = {
    icons_enbled = true,
    theme = 'base2tone_desert_dark',
  },
  sctions = {
    lualine_a = {
      {
        'filename',
        path=1,
      }
    }
  }
}  
