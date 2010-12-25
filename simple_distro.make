; Built using by http://drupal.org/project/buildkit

api = 2
core = 6.x

projects[drupal][type] = core
projects[drupal][version] = "6.20"

projects[simple][type] = profile
projects[simple][download][type] = git
projects[simple][download][url] = git://github.com/sprice/simple.git
projects[simple][download][branch] = 6.x
