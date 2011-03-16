api = 2
core = 7.x

; Build Kit 7.x-2.0-beta2
includes[] = http://drupalcode.org/project/buildkit.git/blob_plain/refs/tags/7.x-2.0-beta2:/drupal-org.make

;--------------------
; Build Kit overrides
;--------------------

projects[tao][subdir] = contrib

projects[rubik][subdir] = contrib

; Notices on admin/index
; http://drupal.org/node/999582
projects[rubik][patch][999582] = http://drupal.org/files/issues/999582-1_notices.patch

;--------------------
; Build Kit Overrides
;--------------------

; "Related terms" definition is missing "base field"
; http://drupal.org/node/1021942
projects[views][patch[1021942] = http://drupal.org/files/issues/views_relatedterms.patch

;--------------------
; Additional Contrib
;--------------------

projects[boxes][subdir] = contrib
projects[boxes][version] = 1.0-beta2

projects[markdown][subdir] = contrib
projects[markdown][version] = 1.0-beta1

; Creates invalid HTML with preformatted blocks.
; http://drupal.org/node/684554
projects[markdown][patch][684554] = http://drupal.org/files/issues/markdown-684554.patch

;--------------------
; Development
;--------------------

projects[coder][subdir] = contrib
projects[coder][version] = 1.0-beta6

;--------------------
; Mapping
;--------------------

projects[libraries][subdir] = contrib
projects[libraries][version] = 1.0

projects[geofield][subdir] = custom
projects[geofield][location] = "http://featureserver.phase2technology.com/fserver
projects[geofield][version] = 1.0-alpha1

projects[mapbox][subdir] = contrib
projects[mapbox][version] = 2.0-alpha0

projects[openlayers][subdir] = contrib
projects[openlayers][version] = 2.0-alpha1

projects[openlayers_plus][subdir] = contrib
projects[openlayers_plus][type] = module
projects[openlayers_plus][download][type] = git
projects[openlayers_plus][download][url] = git://github.com/phase2/openlayers_plus.git
projects[openlayers_plus][download][tag] = drupal-7--1-0-alpha2

;--------------------
; Mapping Libraries
;--------------------

libraries[openlayers_slim][download][type] = "git"
libraries[openlayers_slim][download][url] = git://github.com/developmentseed/openlayers_slim.git
libraries[openlayers_slim][directory_name] = openlayers_slim
