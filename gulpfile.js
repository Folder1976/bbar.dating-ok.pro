/*
*   Gulp-file
*   version: 1.0.0
*/

var gulp = require('gulp'),

    /*
    * style
    */
    sass = require('gulp-sass'),
    sourcemaps = require('gulp-sourcemaps'),
    cleanCSS = require('gulp-clean-css'),
    // prefixer = require('gulp-autoprefixer'),
    rtlcss = require('gulp-rtlcss'),

    /*
    * script
    */
    uglify = require('gulp-uglify'),

    /*
    * html
    */
    rigger = require('gulp-rigger'),

    /*
    * image
    */
    imagemin = require('gulp-imagemin'),
    spritesmith = require('gulp.spritesmith'),

    /*
    * other
    */
    watch = require('gulp-watch'),
    rename = require('gulp-rename'),
    notify = require('gulp-notify'),
    clean = require('gulp-clean'),
    browserSync = require("browser-sync").create(),
    reload = browserSync.reload,

    del = require('del');
    // rimraf = require('rimraf'),


//*****************************
//      config
//*****************************
var path = {
    build: { // Тут мы укажем куда складывать готовые после сборки файлы
        html: 'web/',
        js: 'catalog/view/theme/default/js/',
        css: 'catalog/view/theme/default/stylesheet/',
        img: 'catalog/view/theme/default/image/',
        fonts: 'catalog/view/theme/default/fonts/'
    },
    src: { // Пути откуда брать исходники
        html: 'src/*.html', 			// Синтаксис src/*.html говорит gulp что мы хотим взять все файлы с расширением .html
        js: 'src/js/',
        style: 'src/style/*.scss',
        img: 'src/img/**/*.*', 			// Синтаксис img/**/*.* означает - взять все файлы всех расширений из папки и из вложенных каталогов
        fonts: 'src/fonts/**/*.*'
    },
    watch: { // Тут мы укажем, за изменением каких файлов мы хотим наблюдать
        html: 'src/**/*.html',
        js: 'src/js/**/*.js',
        style: 'src/style/**/*.scss',
        img: 'src/img/**/*.*',
        fonts: 'src/fonts/**/*.*',
        php: 'catalog/view/theme/default/template/**/*.*'
    }
};

//*****************************
//      Styles
//*****************************
gulp.task('style:build', function () {
    gulp.src(path.src.style)
        .pipe(sourcemaps.init())
        .pipe(sass().on('error', sass.logError))
        .pipe(gulp.dest(path.build.css))
        .pipe(cleanCSS())
        .pipe(rename({suffix: '.min'}))
        .pipe(sourcemaps.write('/maps'))
        .pipe(gulp.dest(path.build.css));
        //.pipe(notify('Styles are compiled!'));

    // стили для rtl языков
    // gulp.src(path.src.style)
    //     .pipe(sourcemaps.init())
    //     .pipe(sass().on('error', sass.logError))

    //     .pipe(rtlcss())
    //     .pipe(rename({ suffix: '-rtl' }))
    //     .pipe(gulp.dest(path.build.css))

    //     .pipe(cleanCSS())
    //     .pipe(rename({suffix: '.min'}))
    //     .pipe(sourcemaps.write('/maps'))
    //     .pipe(gulp.dest(path.build.css));

    gulp.src(path.watch.style)
        .pipe(reload({stream: true}));       //перезагрузим наш сервер для обновлений
});

gulp.task('style:clean', function () {
    gulp.src(path.build.css)
        .pipe(clean());
});

//*****************************
//      Scrits
//*****************************
gulp.task('script:build', function () {
    gulp.src(path.src.js + '*.js')
        .pipe(uglify())
        .pipe(gulp.dest(path.build.js))
        .pipe(reload({stream:true}));

    gulp.src(path.src.js + 'lib/*.js')
        .pipe(rigger())
        .pipe(uglify())
        .pipe(gulp.dest(path.build.js))
        .pipe(reload({stream:true}));

});

gulp.task('script:clean', function () {
    gulp.src(path.build.js)
        .pipe(clean());
});

//*****************************
//      Html
//*****************************
gulp.task('html:build', function () {
    gulp.src(path.src.html)                  //Выберем файлы по нужному пути
        .pipe(rigger())                      //Прогоним через rigger
        .pipe(gulp.dest(path.build.html))    //Выплюнем их в папку build
        .pipe(reload({stream: true}));       //И перезагрузим наш сервер для обновлений
});

gulp.task('html:clean', function () {
    gulp.src(path.build.html)
        .pipe(clean());
});

//*****************************
//      PHP
//*****************************
gulp.task('php:build', function () {
    gulp.src(path.watch.php)
        .pipe(reload({stream: true}));       //перезагрузим наш сервер для обновлений
});

// gulp.task('php:clean', function () {
//     gulp.src(path.build.php)
//         .pipe(clean());
// });

//*****************************
//      Images
//*****************************
// Удаление старых спрайтов
// gulp.task('sprite-clean', function (cb) {
//     del([path.build.img + '/i/sprite-*.png'], cb);
// });

// Создание спрайтов
gulp.task('sprite-create', function (cb) {
    del([path.build.img + '/i/sprite-*.png'], cb);

    // рендомное имя файла
    // var fileName = 'sprite-' + Math.random().toString().replace(/[^0-9]/g, '') + '.png';
    var fileName = 'sprite.png';

    var spriteData = gulp.src('src/img/sprite/*.png').pipe(spritesmith({
        imgName: fileName,
        cssName: '_sprite.scss',
        cssFormat: 'scss',
        cssVarMap: function (sprite) {
            sprite.name = 'ico-' + sprite.name;
        },
        imgPath: '../image/i/' + fileName
    }));

    // spriteData.img
    //     .pipe(imagemin())
    //     .pipe(gulp.dest(path.build.img));

    spriteData.css
        .pipe(gulp.dest('src/style/sprite'));

    return spriteData.img.pipe(gulp.dest(path.build.img + '/i'));
});



gulp.task('img:build', ['sprite-create'], function () {
    gulp.src(path.src.img)
        .pipe(imagemin())
        .pipe(gulp.dest(path.build.img));

     gulp.task('sprite-create');
});

gulp.task('img:clean', function (cb) {
    gulp.src(path.build.img)
        .pipe(clean());
});

//*****************************
//      Fonts
//*****************************
gulp.task('fonts:build', function () {
    gulp.src(path.src.fonts)
        .pipe(gulp.dest(path.build.fonts))
});

gulp.task('fonts:clean', function () {
    gulp.src(path.build.fonts)
        .pipe(clean());
});

//*****************************
//      Browser-Sync
//*****************************
gulp.task('browserSync', function () {
    browserSync.init({

        proxy:     "http://bbar.dev/"//, // проксирование вашего удаленного сервера, не важно на чем back-end 
        // logPrefix: 'name_site.dev', // префикс для лога bs, маловажная настройка 
        // host:      'name_site.dev', // можно использовать ip сервера
        // port:      3000, // порт через который будет проксироваться сервер
        // open:      'external', // указываем, что наш url внешний 
        // notify:    true,
        // ghost:     true



        // server: {
        //     baseDir: "./web"
        // },
        // tunnel: true,
        // host: 'localhost',
        // port: 9000,
        // logPrefix: "Frontend_Devil"


    });
});

gulp.task('reload', function () {
    reload();
});

//*****************************
//      Clean
//*****************************
gulp.task('clean', [
//    'html:clean',
    'style:clean',
    'script:clean',
    'img:clean',
    'fonts:clean',
    'php:clean',
]);

//*****************************
//      Build
//*****************************
gulp.task('build', [
//    'html:build',
    'style:build',
    'script:build',
    'img:build',
    'fonts:build',
    // 'php:build',
]);

//*****************************
//      Watch
//*****************************
gulp.task('watcher', function () {
    // watch([path.watch.html], function(event, cb) {
    //     gulp.start('html:build');
    // });
    watch([path.watch.style], function(event, cb) {
        gulp.start('style:build');
    });
    watch([path.watch.js], function(event, cb) {
        gulp.start('script:build');
    });
    watch([path.watch.img], function(event, cb) {
        gulp.start('img:build');
    });
    watch([path.watch.fonts], function(event, cb) {
        gulp.start('fonts:build');
    });
    watch([path.watch.php], function(event, cb) {
        gulp.start('php:build');
    });
});

//*****************************
//      Default task
//*****************************
gulp.task('default', ['build', 'browserSync', 'watcher']);

