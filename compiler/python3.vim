if exists("current_compiler")
  finish
endif
let current_compiler = "pylint"

CompilerSet makeprg=python3\ %
CompilerSet errorformat=%C\ %.%#,%A\ \ File\ \"%f\"\\,\ line\ %l%.%#,%Z%[%^\ ]%\\@=%m
