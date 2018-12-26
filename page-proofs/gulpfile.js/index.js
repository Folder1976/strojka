// ==== GULPFILE ==== //


var requireDir = require('require-dir');

global.g = {
  gulp: require('gulp'),
  del: require('del'),
  fs: require('fs'),
  browserSync: require('browser-sync').create(),
  handleErrors: require('./lib/handleErrors'),
  gp: require('gulp-load-plugins')(),
}

global.TASK_CONFIG = require('./configDev');
global.TASK_CONFIG_BUILD = require('./configBuild');
global.ENV = 'dev';

requireDir('./tasks');






g.gulp.task('dev', g.gulp.series(
  // 'clean',
  g.gulp.parallel(
    'images',
    'copy',
    'fonts',
    'svgSprite',
    'pngSprite',
    'styles:smartGrid',
    'js:copyLib'
  ),
  g.gulp.parallel(
    'styles',
    'pug',
    'js'
  )
));


g.gulp.task('default', g.gulp.series(
  'dev',
  g.gulp.parallel(
    'watch',
    'browserSync'
  )
));


g.gulp.task('build', g.gulp.series(
  function(done){
    global.ENV = 'build';
    done();
  },
  'dev'
));
