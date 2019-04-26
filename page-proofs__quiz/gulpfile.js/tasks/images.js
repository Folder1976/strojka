if(!TASK_CONFIG.tasks.images.enable) return


var confDev = TASK_CONFIG.tasks.images
var confBuild = TASK_CONFIG_BUILD.tasks.images


var imagesTask = function() {
  if ( ENV == 'build' ) conf = confBuild
    else conf = confDev;

  return g.gulp.src(conf.src)
    .pipe(g.gp.changed(conf.dest)) // Ignore unchanged files
    .pipe(g.gp.if(conf.minify, g.gp.imagemin(conf.minifyConfig)))
    .pipe(g.gp.if(conf.tinypng, g.gp.tinypng(conf.tinypngApiKey)))
    .pipe(g.gulp.dest(conf.dest))
    // .pipe(g.browserSync.stream())
}


g.gulp.task('images', imagesTask)
