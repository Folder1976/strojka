if(!TASK_CONFIG.tasks.watch.enable) return


var conf = TASK_CONFIG.tasks


var watchTask = function() {
  for (task in conf.watch.watchableTasks) {
    if ( conf[task].enable ) {
      if ( conf.watch.watchableTasks[task] == 'default' ) {
        g.gulp.watch(conf[task].src, g.gulp.series(task))
      } else {
        g.gulp.watch(conf.watch.watchableTasks[task], g.gulp.series(task))
      }
    }
  }
}


g.gulp.task('watch', watchTask)
