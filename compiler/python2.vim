if exists("current_compiler")
  finish
endif
let current_compiler = "pylint"

CompilerSet makeprg=python2\ %
CompilerSet errorformat=%C\ %.%#,%A\ \ File\ \"%f\"\\,\ line\ %l%.%#,%Z%[%^\ ]%\\@=%m
