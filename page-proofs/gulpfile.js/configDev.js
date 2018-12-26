// ==== КОНФИГУРАЦИЯ Dev ==== //

// let devDest = "web";
let devDest = "../catalog/view/theme/default";



var devConfig = {

  // настройки задач
  tasks: {

    // список задач для контроля
    // отслеживатся будут только включенные задачи ( enable: true )
    watch: {
      enable: true,
      watchableTasks: {
        fonts: "default",
        images: "default",
        pug: "src/pug/**/*.pug",
        js: "src/js/**/*.js",
        svgSprite: "default",
        pngSprite: "default",
        styles: "default",
      },
    },

    // удаление директорий
    clean: {
      enable: false,
      folders: devDest,
    },

    // собираем html-ки из згп-файлов
    pug: {
      enable: true,
      src: "src/pug/pages/*.pug",
      dest: devDest + "/html/",
      pugOptions: {
        locals : {
          nav: JSON.parse(g.fs.readFileSync('./data/navigation.json', 'utf8')),
          content: JSON.parse(g.fs.readFileSync('./data/content.json', 'utf8')),
        },
        pretty: true
      },
    },

    // минимизируем и копируем изображения
    images: {
      enable: true,
      src: "src/img/**/*.{" + ["jpg", "jpeg", "png", "gif"] + "}",
      dest: devDest + "/img",
      minify: false,
      minifiConfig: {
        optimizationLevel: 7,
        progressive: true,
        interlaced: true
      },
      tinypng: false,
      tinypngApiKey: "YOUR_API_KEY",
    },

    // копируем шрифты
    fonts: {
      enable: true,
      src: "src/fonts/**/*.{" + ["woff2", "woff", "eot", "ttf", "svg", "otf"] + "}",
      dest: devDest + "/fonts",
    },

    // собираем, минимизируем и копируем скрипты
    js: {
      enable: true,
      src: "src/js/*.js",
      dest: devDest + "/js",
      uglify: false,
      rename: { suffix: '.min' },

      copyLib: [
        "node_modules/jquery/dist/jquery.js",
        "node_modules/jquery/dist/jquery.min.js",
        // "node_modules/slicknav/dist/jquery.slicknav.js",
        // "node_modules/slicknav/dist/jquery.slicknav.min.js",
        "node_modules/magnific-popup/dist/jquery.magnific-popup.js",
        "node_modules/magnific-popup/dist/jquery.magnific-popup.min.js",
        "node_modules/slick-carousel/slick/slick.js",
        "node_modules/slick-carousel/slick/slick.min.js",
        "node_modules/jquery.maskedinput/src/jquery.maskedinput.js",
      ],
      copyDest: devDest + "/js/lib",

      srcLib: "src/js/lib/**/*.js",
      destLib: devDest + "/js/lib",
      uglifyLib: false,
    },

    // создаем svg-спайты
    svgSprite: {
      enable: true,
      src: "src/svgSprite/*.svg",
      dest: devDest + "/img/sprite",
    },

    // создаем png-спайты
    pngSprite: {
      enable: true,
      src: "src/pngSprite/*.png",
      dest: devDest + "/img/sprite",
      imgPath: "../img/sprite",
      // fileName: "sprite-" + Math.random().toString().replace(/[^0-9]/g, "") + ".png",  // random name
      fileName: "sprite.png",  // static name
    },

    // собираем стили из scss-файлов, минимизируем, копируем стили
    styles: {
      enable: true,
      src: "src/style/**/*.{" + ["sass", "scss", "css"] + "}",
      dest: devDest + "/stylesheet",
      autoprefixer: { browsers: ['> 3%', 'last 2 versions', 'ie 9', 'ios 6', 'android 4'] },
      rename: { suffix: '.min' },
      minifiEnable: true,
      minify: { keepSpecialComments: 0 },
      groupCssMediaQueriesEnable: false,
      sourcemapsEnable: true,
      smartGridPath: "src/style/utils",
      smartGridSettings: {
        filename: '_smart-grid',
        outputStyle: 'scss', /* less || scss || sass || styl */
        columns: 12, /* number of grid columns */
        offset: '30px', /* gutter width px || % || rem */
        mobileFirst: false, /* mobileFirst ? 'min-width' : 'max-width' */
        container: {
          maxWidth: '1200px', /* max-width оn very large screen */
          fields: '15px' /* side fields */
        },
        breakPoints: {
          lg: {
              width: '1100px', /* -> @media (max-width: 1100px) */
          },
          md: {
              width: '960px'
          },
          sm: {
              width: '780px',
              // fields: '15px' /* set fields only if you want to change container.fields */
          },
          xs: {
              width: '560px'
          }
          /* 
          We can create any quantity of break points.
   
          some_name: {
              width: 'Npx',
              fields: 'N(px|%|rem)',
              offset: 'N(px|%|rem)'
          }
          */
        }
      },
    },

    // копируем необходимые дополнительные файлы
    copy: {
      enable: true,
      copyArr: [
        {
          from: "src/imgSvg/**/*.svg",
          to: devDest + "/img",
        },
        // {
        //   from: "pdf/**/*.*",
        //   to: devDest + "/pdf",
        // },
      ],
    },

    // живая перезагрузка через browserSync
    browserSync: {
      enable: true,
      param: {
        // server: {
        //   baseDir: devDest,
        // },
        proxy: 'strojka.localhost', // Использование прокси-сервера, а не встроенного сервера


        notify: false, // In-line нотификации ( блоки текста, говорящие подключились ли вы к серверу BrowserSync или нет )
        open: true, // Поставьте false если вы не хотите, чтобы окно браузера открывалось автоматически
        port: 3000, // Номер порта для live версии сайта; default: 3000
        watchOptions: {
          debounceDelay: 2000 // Задержка для событий, вызываемых подряд для того же файла / события
        }
      }
    },

  }
}







module.exports = devConfig;
