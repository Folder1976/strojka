if(!TASK_CONFIG.tasks.svgSprite.enable) return


var confDev = TASK_CONFIG.tasks.svgSprite
var confBuild = TASK_CONFIG_BUILD.tasks.svgSprite


var svgSpriteTask = function() {
  if ( ENV == 'build' ) conf = confBuild
    else conf = confDev;

  return g.gulp.src(conf.src)
    .pipe(g.gp.svgmin({
        js2svg: {
            pretty: true
        }
    }))
    .pipe(g.gp.cheerio({
      run: function($) {
        $('[fill]').removeAttr('fill');
        $('[stroke]').removeAttr('stroke');
        $('[style]').removeAttr('style');
      },
      parserOptions: { xmlMode: true }
    }))
    .pipe(g.gp.replace('&gt;', '>'))
    .pipe(g.gp.svgSprite({
      mode: {
        symbol: {
          sprite: "sprite.svg"
        }
      }
    }))
    .pipe(g.gulp.dest(conf.dest));
}


g.gulp.task('svgSprite', svgSpriteTask)
