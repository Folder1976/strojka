// ==== КОНФИГУРАЦИЯ Build ==== //

var devConfig = TASK_CONFIG;

// клонируем конфиг devConfig
var buildConfig = JSON.stringify(devConfig);
buildConfig = JSON.parse(buildConfig);
// и меняем необходимые значения:
let buildDest = "build"
buildConfig.tasks.clean.folders   = buildDest;
buildConfig.tasks.pug.dest        = buildDest + "/";

buildConfig.tasks.images.dest     = buildDest + "/img";
buildConfig.tasks.images.minify   = true;

buildConfig.tasks.fonts.dest      = buildDest + "/fonts";

buildConfig.tasks.js.dest         = buildDest + "/js";
buildConfig.tasks.js.uglify       = true;
buildConfig.tasks.js.copyDest     = buildDest + "/js/lib",
buildConfig.tasks.js.destLib      = buildDest + "/js/lib";
buildConfig.tasks.js.uglifyLib    = true;

buildConfig.tasks.svgSprite.dest  = buildDest + "/img/sprite";

buildConfig.tasks.pngSprite.dest  = buildDest + "/img/sprite";

buildConfig.tasks.styles.dest     = buildDest + "/css";
buildConfig.tasks.styles.sourcemapsEnable = false;
buildConfig.tasks.styles.groupCssMediaQueriesEnable = true;

buildConfig.tasks.copy.copyArr    = 
  [
    {
      from: "src/imgSvg/**/*.svg",
      to: buildDest + "/img",
    }
  ];

buildConfig.tasks.browserSync.param.server.baseDir = "buildDest";




module.exports = buildConfig;
