if(!TASK_CONFIG.tasks.fonts.enable) return 


var confDev = TASK_CONFIG.tasks.fonts
var confBuild = TASK_CONFIG_BUILD.tasks.fonts


var fontsTask = function() {
  if ( ENV == 'build' ) conf = confBuild
    else conf = confDev;

  return g.gulp.src(conf.src)
    .pipe(g.gp.changed(conf.dest)) // Ignore unchanged files
    .pipe(g.gulp.dest(conf.dest));
}


g.gulp.task('fonts', fontsTask)
