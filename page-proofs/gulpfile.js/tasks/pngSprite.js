if(!TASK_CONFIG.tasks.pngSprite.enable) return

var confDev = TASK_CONFIG.tasks.pngSprite
var confBuild = TASK_CONFIG_BUILD.tasks.pngSprite
// var browserSync = require('browser-sync')
// var gulp        = require('gulp')
// var del         = require('del')
var spritesmith = require('gulp.spritesmith')

var pngSpriteTask = function(cb) {
  if ( ENV == 'build' ) conf = confBuild
    else conf = confDev;

  console.log(conf.src);
  g.del([conf.dest + '/sprite*.png'], cb);

  var fileName = conf.fileName;

  var spriteData = g.gulp.src(conf.src).pipe(spritesmith({
    imgName: fileName,
    cssName: '_sprite.scss',
    cssFormat: 'scss',
    cssVarMap: function (sprite) {
        sprite.name = 'ico-' + sprite.name;
    },
    imgPath: conf.imgPath + '/' + fileName
  }));

  spriteData.css
    .pipe(g.gulp.dest('src/style/utils'));

  return spriteData.img.pipe(g.gulp.dest(conf.dest));
    // .pipe(g.browserSync.stream())
}

g.gulp.task('pngSprite', pngSpriteTask)
// module.exports = pngSpriteTask
