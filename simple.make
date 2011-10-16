api = 2
core = 7.x

; Build Kit 7.x-2.x HEAD
includes[] = http://drupalcode.org/project/buildkit.git/blob_plain/refs/heads/7.x-2.x:/drupal-org.make

;--------------------
; Build Kit overrides
;--------------------

projects[tao][subdir] = contrib

projects[rubik][subdir] = contrib


;--------------------
; Additional Contrib
;--------------------

projects[boxes][subdir] = contrib
projects[boxes][version] = 1.0-beta6

projects[markdown][subdir] = contrib
projects[markdown][version] = 1.0

; Creates invalid HTML with preformatted blocks.
; http://drupal.org/node/684554
projects[markdown][patch][684554] = http://drupal.org/files/issues/markdown-684554.patch

;--------------------
; Development
;--------------------

projects[coder][subdir] = contrib
projects[coder][version] = 1.0
