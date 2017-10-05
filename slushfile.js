var gulp = require('gulp'),
  inquirer = require('inquirer'),
  template = require('gulp-template'),
  rename = require('gulp-rename'),
  install = require('gulp-install');

gulp.task('default', function(done) {
  inquirer.prompt([
    {
      type: 'input',
      name: 'name',
      message: 'What is the name of your game?'
    },
    {
      type: 'input',
      name: 'author',
      message: 'Who is the author?'
    }
  ], function(answers) {
    gulp.src(__dirname + "/templates/app/**")
      .pipe(template(answers))
      .pipe(gulp.dest('./'))
      .on('finish', function() {
        done();
    });
  });
});

gulp.task('component', function(done) {
  gulp.src(__dirname + "/templates/component/component.hx")
    .pipe(template({ name: gulp.args[0] }))
    .pipe(rename(gulp.args[0] + '.hx'))
    .pipe(gulp.dest('./src/components'))
    .on('finish', function() {
      done();
  });
});

gulp.task('entity', function(done) {
  gulp.src(__dirname + "/templates/entity/entity.hx")
    .pipe(template({ name: gulp.args[0] }))
    .pipe(rename(gulp.args[0] + '.hx'))
    .pipe(gulp.dest('./src/entities'))
    .on('finish', function() {
      done();
  });
});

gulp.task('state', function(done) {
  gulp.src(__dirname + "/templates/state/state.hx")
    .pipe(template({ name: gulp.args[0] }))
    .pipe(rename(gulp.args[0] + '.hx'))
    .pipe(gulp.dest('./src/states'))
    .on('finish', function() {
      done();
  });
});

gulp.task('model', function(done) {
  gulp.src(__dirname + "/templates/model/model.hx")
    .pipe(template({ name: gulp.args[0] }))
    .pipe(rename(gulp.args[0] + '.hx'))
    .pipe(gulp.dest('./src/models'))
    .on('finish', function() {
      done();
  });
});

gulp.task('system', function(done) {
  gulp.src(__dirname + "/templates/system/system.hx")
    .pipe(template({ name: gulp.args[0] }))
    .pipe(rename(gulp.args[0] + '.hx'))
    .pipe(gulp.dest('./src/systems'))
    .on('finish', function() {
      done();
  });
});

gulp.task('gulp', function(done) {
    gulp.src(__dirname + "/templates/gulp/**")
      .pipe(gulp.dest('./'))
      .pipe(install())
      .on('finish', function() {
        done();
    });
});
