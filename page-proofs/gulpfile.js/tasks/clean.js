if(!TASK_CONFIG.tasks.clean.enable) return


var confDev = TASK_CONFIG.tasks.clean
var confBuild = TASK_CONFIG_BUILD.tasks.clean


var cleanTask = function() {
  // console.log(ENV);
  if ( ENV == 'build' ) conf = confBuild
    else conf = confDev;
  // console.log(conf);

  return g.del(conf.folders);
}


g.gulp.task('clean', cleanTask);
