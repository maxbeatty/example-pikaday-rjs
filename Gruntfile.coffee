module.exports = (grunt) ->
  grunt.loadNpmTasks 'grunt-contrib-coffee'
  grunt.loadNpmTasks 'grunt-contrib-requirejs'

  grunt.initConfig

    coffee:
      options:
        bare: true
        sourceMap: false
        sourceRoot: '.'
      client:
        files: [
          {
            expand: true
            flatten: false
            cwd: 'src'
            src: ['**/*.coffee']
            dest: 'lib'
            ext: '.js'
          }
        ]

    requirejs:
      lib:
        options:
          mainConfigFile: 'lib/config.js'
          optimize: 'uglify2'
          preserveLicenseComments: false
          useStrict: true
          wrap: true
          generateSourceMaps: true
          name: 'main' # relative to baseUrl
          include: ['requireLib'] # from config
          out: 'lib/build.js'

  grunt.registerTask 'default', ['coffee', 'requirejs']
