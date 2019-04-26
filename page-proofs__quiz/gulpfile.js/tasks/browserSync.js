if(!TASK_CONFIG.tasks.browserSync.enable) return


var conf = TASK_CONFIG.tasks.browserSync


var browserSyncTask = function() {
  g.browserSync.init(conf.param);
}


g.gulp.task('browserSync', browserSyncTask)
