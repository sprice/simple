api = 2
core = 7.x

; Build Kit drupal-org.make (Jan. 10)
includes[] = http://drupalcode.org/viewvc/drupal/contributions/profiles/buildkit/drupal-org.make?revision=1.17.2.1.2.13&view=co&pathrev=DRUPAL-7--2

;--------------------
; Build Kit overrides
;--------------------

projects[tao][subdir] = contrib

projects[rubik][subdir] = contrib

; Notices on admin/index
; http://drupal.org/node/999582
projects[rubik][patch][999582] = http://drupal.org/files/issues/999582-1_notices.patch


;--------------------
; Additional Contrib
;--------------------

projects[boxes][subdir] = contrib
projects[boxes][version] = 1.0-beta2

;--------------------
; Development
;--------------------

projects[coder][subdir] = contrib
projects[coder][version] = 1.0-beta6
