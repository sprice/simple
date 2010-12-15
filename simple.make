api = 2
core = 7.x

; Build Kit drupal-org.make (Nov. 30))
includes[] = http://drupalcode.org/viewvc/drupal/contributions/profiles/buildkit/drupal-org.make?revision=1.17.2.1.2.12&view=co&pathrev=DRUPAL-7--2

; Overrides for Build Kit

projects[tao][subdir] = contrib
projects[rubik][subdir] = contrib

; Development

projects[coder][version] = 1.0-beta6