axis         = require 'axis-css'
autoprefixer = require 'autoprefixer-stylus'
rupture      = require 'rupture'
grate      	 = require 'grate'

module.exports =
  ignores: ['readme.md', '**/layout.*', '**/_*']

  stylus:
    use: [axis(), rupture(), grate(), autoprefixer()]
