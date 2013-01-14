api = 2
core = 7.x

; Include the definition for how to build Drupal core directly, including patches:
includes[] = drupal-org-core.make

projects[simple][type] = profile
projects[simple][download][type] = git
projects[simple][download][url] = git://github.com/sprice/simple.git
