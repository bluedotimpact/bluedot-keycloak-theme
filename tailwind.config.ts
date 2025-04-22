import type { Config } from 'tailwindcss';
import colors from 'tailwindcss/colors';

export default {
  content: ['./src/login/**/*.ftl'],
  experimental: {
    optimizeUniversalDefaults: true,
  },
  plugins: [require('@tailwindcss/forms')],
  theme: {
    extend: {
      colors: {
        secondary: colors.stone,

        bluedot: {
          lighter: '#CCD7FF',
          light: '#6687FF',
          normal: '#0037FF',
          dark: '#002199',
          darker: '#00114D',
          black: '#1E1E1E',
        },
        cream: {
          normal: '#FFFCF7',
          dark: '#D9D6D2',
        },
      },
    },
  },
} satisfies Config;
