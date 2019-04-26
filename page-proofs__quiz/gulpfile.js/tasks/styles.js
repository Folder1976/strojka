if(!TASK_CONFIG.tasks.styles.enable) return


var confDev = TASK_CONFIG.tasks.styles
var confBuild = TASK_CONFIG_BUILD.tasks.styles
var smartgrid = require('smart-grid')


var smartGridTask = function (done) {
  if ( ENV == 'build' ) conf = confBuild
    else conf = confDev;

  smartgrid(conf.smartGridPath, conf.smartGridSettings);
  done();
}


// Создаёт файл css из файлов Scss , расставляет вендорные префиксы и минифицирует
var stylesheetsTask = function () {
  if ( ENV == 'build' ) conf = confBuild
    else conf = confDev;

  return g.gulp.src(conf.src)
    .pipe(g.gp.if(conf.sourcemapsEnable, g.gp.sourcemaps.init()))
    .pipe(g.gp.sass().on('error', g.handleErrors))
    .pipe(g.gp.autoprefixer(conf.autoprefixer))
    .pipe(g.gp.lineEndingCorrector({verbose:true, eolc: 'LF', encoding:'utf8'}))

    // объеденяем соответствующие @media в один запрос:
    .pipe(g.gp.if(conf.groupCssMediaQueriesEnable, g.gp.groupCssMediaQueries()))
    // Пишет внутреннюю sourcemap:
    .pipe(g.gp.if(conf.sourcemapsEnable, g.gp.sourcemaps.write('.')))
    // Помещает не минимизированный файл в папку `dest`:
    .pipe(g.gulp.dest(conf.dest))

    .pipe(g.browserSync.stream({match: '**/*.css'}))

    // переименовываем файл (добавляем суфикс ".min"):
    .pipe(g.gp.if(conf.minifiEnable, g.gp.rename(conf.rename)))
    // минифицируем:
    .pipe(g.gp.if(conf.minifiEnable, g.gp.cleancss(conf.minify)))
    // Помещает минимизированный файл в папку `dest`:
    .pipe(g.gp.if(conf.minifiEnable, g.gulp.dest(conf.dest)));
}


g.gulp.task('styles:smartGrid', smartGridTask);
g.gulp.task('styles', stylesheetsTask);
