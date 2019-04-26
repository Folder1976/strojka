if(!TASK_CONFIG.tasks.copy.enable) return

var confDev = TASK_CONFIG.tasks.copy
var confBuild = TASK_CONFIG_BUILD.tasks.copy



var copyTask = function(done) {
  if ( ENV == 'build' ) conf = confBuild
    else conf = confDev;

  conf.copyArr.forEach(function(item, i, arr){
    g.gulp.src(item.from)
      .pipe(g.gulp.dest(item.to));
  });

  return done();
}


g.gulp.task('copy', copyTask)
