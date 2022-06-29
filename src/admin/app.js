import AuthLogo from './extensions/auth-logo.png';
import MenuLogo from './extensions/logo.png';
import favicon from './extensions/favicon.ico';
//import MyNewWYSIGWYG from './extensions/components/MyNewWYSIGWYG'; // this file contains the logic for your new WYSIWYG
import MyNewWYSIGWYG from '../plugins/wysiwyg/admin/src/index'; // TEST. this file contains the logic for your new WYSIWYG

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
  en: {
    "app.components.LeftMenu.navbrand.title": "Dashboard",
    "app.components.LeftMenu.navbrand.workplace": "...",
  },
  bootstrap(app) {
    console.debug('src/admin/app.js: ',app);
   app.addFields({ type: 'wysiwyg', Component: MyNewWYSIGWYG });
  },
};
