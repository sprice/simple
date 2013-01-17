api = 2
core = 7.x

; Include Drupal core and any core patches from Build Kit
includes[] = http://drupalcode.org/project/buildkit.git/blob_plain/refs/heads/7.x-2.x:/drupal-org-core.make

; Download the Simple install profile
projects[simple][type] = profile
projects[simple][download][type] = git
projects[simple][download][url] = git://github.com/sprice/simple.git
projects[simple][download][branch] = master
