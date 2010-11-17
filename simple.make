api = 2
core = 7.x

includes[] = http://drupalcode.org/viewvc/drupal/contributions/profiles/buildkit/drupal-org.make?revision=1.17.2.1.2.10&view=co&pathrev=DRUPAL-7--2

; Overrides

projects[ctools][type] = module
projects[ctools][download][type] = cvs
projects[ctools][download][module] = contributions/modules/ctools
projects[ctools][download][revision] = HEAD:2010-11-11