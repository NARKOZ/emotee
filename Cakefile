{log}   = console
{exec}  = require 'child_process'
fs      = require 'fs'

VERSION   = '1.2.0'
TIMESTAMP = Date.now()

HEADER = """
/* Copyright (c) 2011-2012 Nihad Abbasov / mail@narkoz.me
 *
 * Emotee v#{VERSION}, #{TIMESTAMP}
 * https://github.com/narkoz/emotee
 *
 * All rights reserved.
 */


"""

INFILE  = './src/emotee.coffee'
OUTFILE = './build/app.js'

task 'build', "builds  #{INFILE}", ->
  exec "coffee --print #{INFILE} | uglifyjs", (err, stdout, stderr) ->
    throw err if err
    fs.writeFile OUTFILE, HEADER + stdout, (err) ->
      throw err if err

task 'watch', "watches #{INFILE} for changes and builds it", ->
  invoke 'build'
  fs.watchFile INFILE, interval: 220, (curr, prev) ->
    if curr.mtime isnt prev.mtime
      invoke 'build'
