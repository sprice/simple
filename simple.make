api = 2.0
core = 6.x

; Build Kit drupal-org.make (Sept. 27))

includes[] = http://drupalcode.org/viewvc/drupal/contributions/profiles/buildkit/drupal-org.make?revision=1.17.2.3&view=co&pathrev=DRUPAL-6--2

; Overrides for Build Kit

; Views security release
projects[views][version] = 2.12

projects[tao][subdir] = contrib

projects[rubik][subdir] = contrib

; Development

projects[coder][subdir] = contrib
projects[coder][version] = 2.0-beta1

projects[simpletest][subdir] = contrib
projects[simpletest][version] = 2.11