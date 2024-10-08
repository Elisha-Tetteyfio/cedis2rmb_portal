const defaultTheme = require('tailwindcss/defaultTheme')

module.exports = {
  content: [
    './public/*.html',
    './app/helpers/**/*.rb',
    './app/javascript/**/*.js',
    './app/views/**/*.{erb,haml,html,slim}'
  ],
  theme: {
    extend: {
      fontFamily: {
        sans: ['Inter var', ...defaultTheme.fontFamily.sans],
      },
    },
    colors: {
      'body_bg': '#efefef',
      'white': '#ffffff',
      'black': '#000000',
      'form_border': '#e6e6e6',
      'font_grey': '#737373',
      'font_grey_dark': '#8f8f8f',
      'blue': '#4f71fa',
      'green': '#01b130',
      'slate_dark': '#dadada',
      'slate_medium': '#f9f9f9',
      'status_green': '#ebffe0',
      'status_yellow': '#fff5e0',
      'status_red': '#ffe0e0',
      'status_yellow_dark': '#f9bc23',
      'status_green_dark': '#23f96e',
      'status_red_dark': '#f92323'
    },
  },
  plugins: [
    require('@tailwindcss/forms'),
    require('@tailwindcss/typography'),
    require('@tailwindcss/container-queries'),
  ]
}
