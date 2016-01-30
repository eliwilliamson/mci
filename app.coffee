axis         = require 'axis'
rupture      = require 'rupture'
js_pipeline  = require 'js-pipeline'
css_pipeline = require 'css-pipeline'
sass         = require 'roots-sass'

module.exports =
  ignores: ['readme.md', '**/layout.*', '**/_*', '.gitignore', 'ship.*conf']

  extensions: [
    js_pipeline(files: 'assets/js/*.coffee'),
    css_pipeline(files: 'assets/css/*.scss'),
    sass(files: 'assets/css/master.scss')
  ]

  'coffee-script':
    sourcemap: true

  jade:
    pretty: true
