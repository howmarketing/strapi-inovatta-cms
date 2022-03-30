import AuthLogo from './extensions/auth-logo.png';
import MenuLogo from './extensions/logo.png';
import favicon from './extensions/favicon.ico';

export default {
  config: {
    auth: { logo: AuthLogo },
    head: { favicon: favicon },
    menu: { logo: MenuLogo },
    theme: {
      colors: {
        primary100: '#181934', //'#f6ecfc',
        primary200: '#e0cf81', //'#e0c1f4',
        primary500: '#ac7300', //'#ac73e6',
        primary600: '#cfb800', //'#9736e8',
        primary700: '#d1bd12', //'#8312d1',
        danger700: '#86043c', //'#b72b1a'
      },
    },
    locales: [
      // 'ar',
      'fr',
      // 'cs',
      // 'de',
      // 'dk',
      'es',
      // 'he',
      // 'id',
      // 'it',
      // 'ja',
      // 'ko',
      // 'ms',
      // 'nl',
      // 'no',
      // 'pl',
      'pt-BR',
      // 'pt',
      // 'ru',
      // 'sk',
      // 'sv',
      // 'th',
      // 'tr',
      // 'uk',
      // 'vi',
      // 'zh-Hans',
      // 'zh',
    ],
  },
  bootstrap(app) {
    console.log(app);
  },
};
