if(!TASK_CONFIG.tasks.js.enable) return


var confDev = TASK_CONFIG.tasks.js
var confBuild = TASK_CONFIG_BUILD.tasks.js


var jsCopyLibTask = function () {
  if ( ENV == 'build' ) conf = confBuild
    else conf = confDev;

  // копируем необходимые файлы
  g.gulp.src(conf.copyLib)
    .pipe(g.gulp.dest(conf.copyDest));

  return g.gulp.src(conf.srcLib)
    .pipe(g.gulp.dest(conf.destLib))   // Помещаем не минимизированные файлы в папку 'dest'

    .pipe(g.gp.if(conf.uglifyLib, g.gp.rename(conf.rename)))
    .pipe(g.gp.if(conf.uglifyLib, g.gp.uglify()))
    .pipe(g.gp.if(conf.uglifyLib, g.gulp.dest(conf.destLib)));
}


var jsTask = function () {
  if ( ENV == 'build' ) conf = confBuild
    else conf = confDev;

  return g.gulp.src(conf.src)
    .pipe(g.gp.rigger())
    .pipe(g.gulp.dest(conf.dest))   // Помещаем не минимизированные файлы в папку 'dest'

    .pipe(g.gp.if(conf.uglify, g.gp.rename(conf.rename)))   // переименовываем файл (добавляем суфикс ".min")
    .pipe(g.gp.if(conf.uglify, g.gp.uglify()))
    .pipe(g.gp.if(conf.uglify, g.gulp.dest(conf.dest))) // Помещаем минимизированные файлы в папку 'dest'

    .pipe(g.browserSync.stream());
}


g.gulp.task('js:copyLib', jsCopyLibTask);
g.gulp.task('js', jsTask);
