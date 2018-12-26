if(!TASK_CONFIG.tasks.pug.enable) return


var confDev = TASK_CONFIG.tasks.pug
var confBuild = TASK_CONFIG_BUILD.tasks.pug


var pugTask = function() {
  if ( ENV == 'build' ) conf = confBuild
    else conf = confDev;

  return g.gulp.src(conf.src)
    .pipe(g.gp.pug(conf.pugOptions)).on('error', g.handleErrors)
    .pipe(g.gulp.dest(conf.dest))
    .on('end', g.browserSync.reload);
}


g.gulp.task('pug', pugTask)
