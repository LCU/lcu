gulp = require('gulp')
gulpLoadPlugins = require('gulp-load-plugins')
plugins = gulpLoadPlugins()

gulp.task "todo", ->
  gulp.src(["client/**/**/*.coffee", "lib/**/**/*.*", "server/**/**/*.*"])
    .pipe(plugins.todo())
    .pipe gulp.dest("./")
  return

gulp.task "default", [
  "todo"
]
