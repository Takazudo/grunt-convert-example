module.exports = (grunt) ->
  
  grunt.task.loadTasks 'gruntcomponents/tasks'
  grunt.task.loadNpmTasks 'grunt-contrib-watch'
  grunt.task.loadNpmTasks 'grunt-convert'

  grunt.initConfig

    growl:

      ok:
        title: 'COMPLETE!!'
        msg: '＼(^o^)／'

    convert:

      yml2json:
        files: [
          {
            expand: true
            cwd: 'ymls/'
            src: ['**/*.yml']
            dest: 'result/'
            ext: '.json'
          }
        ]
      
    watch:

      allchecker:
        files: '**/*.yml'
        tasks: [
          'default'
        ]

  grunt.registerTask 'default', [
    'convert'
    'growl:ok'
  ]

