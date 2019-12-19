module.exports = (grunt) ->
  pkg = grunt.file.readJSON 'package.json'
  banner = """
/* Copyright (c) 2011-2019 Nihad Abbasov <nihad@42na.in>
 *
 * Emotee v<%= pkg.version %>, <%= Date.now() %>
 * https://github.com/narkoz/emotee
 *
 * All rights reserved.
 */


"""

  grunt.initConfig
    pkg: pkg
    coffee:
      compile:
        src: 'src/js/<%= pkg.name %>.coffee'
        dest: 'src/js/<%= pkg.name %>.js'

    uglify:
      options:
        banner: banner
      build:
        src: 'src/js/<%= pkg.name %>.js'
        dest: 'src/js/<%= pkg.name %>.js'

    watch:
      all:
        options:
          interrupt: true
        files: [
          'package.json'
          'Gruntfile.coffee'
          'src/js/<%= pkg.name %>.coffee'
          'src/css/*.css'
          'src/*.html'
        ]
        tasks: 'default'

    copy:
      pkg:
        cwd: 'src/'
        src: '**'
        dest: 'pkg/'
        expand: true

    clean: [
      'src/js/<%= pkg.name %>.js',
      'pkg/js/<%= pkg.name %>.coffee'
    ]

    replace:
      options:
        variables:
          version: '<%= pkg.version %>'
      files:
        src: 'src/manifest.json'
        dest: 'pkg/manifest.json'

  grunt.loadNpmTasks 'grunt-contrib-coffee'
  grunt.loadNpmTasks 'grunt-contrib-uglify'
  grunt.loadNpmTasks 'grunt-contrib-watch'
  grunt.loadNpmTasks 'grunt-contrib-clean'
  grunt.loadNpmTasks 'grunt-contrib-copy'
  grunt.loadNpmTasks 'grunt-replace'

  grunt.registerTask 'default', ['coffee', 'uglify', 'copy', 'clean', 'replace']
