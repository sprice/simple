api = 2
core = 7.x

; Build Kit 7.x-2.0-beta2 Distro http://drupal.org/project/buildkit
includes[] = http://drupalcode.org/project/buildkit.git/blob_plain/refs/tags/7.x-2.0-beta2:/distro.make

projects[simple][type] = profile
projects[simple][download][type] = git
projects[simple][download][url] = git://github.com/sprice/simple.git
projects[simple][download][branch] = mapping