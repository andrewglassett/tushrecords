axis         = require 'axis-css'
autoprefixer = require 'autoprefixer-stylus'
rupture      = require 'rupture'
grate      	 = require 'grate'

module.exports =
  ignores: ['README.md', '**/layout.*', '**/_*', '.gitignore']

  stylus:
    use: [axis(), rupture(), grate(), autoprefixer()]
