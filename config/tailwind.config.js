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
  },
  plugins: [
    require('@tailwindcss/forms'),
    require('@tailwindcss/aspect-ratio'),
    require('@tailwindcss/typography'),
    require('@tailwindcss/container-queries'),
    function ({ addUtilities }) {
      addUtilities({
        '.w-minus': {
          width: 'calc(100% - 263px)',
        },
        '.font-roboto':{
          fontFamily:'Roboto'
        },

        '.logo-color':{
          backgroundColor:'rgba(243, 217, 217, 1)'
        },
        '.thead-background':{
          backgroundColor:'rgba(181, 1, 62, 1)'
        },
        '.td1-color':{
          backgroundColor:'rgba(205, 92, 92, 1)'
        },
        '.td2-color':{
          backgroundColor:'rgba(229, 229, 229, 1)'
        },
        '.color-prev': {
          color: '#B5013E',
          borderColor: '#B5013E',

        },
        '.hidden-icon':{
          display: 'none'
        },
        '.font-size':{
          fontSize:'12px'
        }
      });
    },
  ]
}
