api = 2
core = 7.x

; Build Kit drupal-org.make (Nov. 30))
includes[] = http://drupalcode.org/viewvc/drupal/contributions/profiles/buildkit/drupal-org.make?revision=1.17.2.1.2.12&view=co&pathrev=DRUPAL-7--2

; Overrides for Build Kit

projects[tao][subdir] = contrib

projects[rubik][subdir] = contrib

projects[admin][patch][] = http://drupal.org/files/issues/admin-hidden-content.patch

projects[views][download][date] = 2010-12-16

; Development

projects[coder][subdir] = contrib
projects[coder][version] = 1.0-beta6

; Searchlight

projects[searchlight][type] = module
projects[searchlight][subdir] = contrib
projects[searchlight][download][type] = git
projects[searchlight][download][url] = git://github.com/yhahn/searchlight.git
projects[searchlight][download][branch] = drupal-7--1