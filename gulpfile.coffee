gulp = require "gulp"
ecstatic = require "ecstatic"
http = require "http"

gulp.task "serve", ->
  http.createServer(
    ecstatic
      root: __dirname
  ).listen(8080)