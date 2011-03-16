<?php

/**
 * Implementation of hook_openlayers_presets().
 */
function simple_map_openlayers_presets() {
  $export = array();

  $openlayers_presets = new stdClass;
  $openlayers_presets->disabled = FALSE; /* Edit this to true to make a default openlayers_presets disabled initially */
  $openlayers_presets->api_version = 1;
  $openlayers_presets->name = 'blog_map';
  $openlayers_presets->title = 'Blogposts';
  $openlayers_presets->description = 'Blog terms on a map';
  $openlayers_presets->data = array(
    'width' => 'auto',
    'height' => '200px',
    'image_path' => 'http://js.mapbox.com/theme/dark/',
    'css_path' => '',
    'proxy_host' => '',
    'hide_empty_map' => 0,
    'center' => array(
      'initial' => array(
        'centerpoint' => '0, 0',
        'zoom' => '3',
      ),
      'restrict' => array(
        'restrictextent' => 0,
        'restrictedExtent' => '',
      ),
    ),
    'behaviors' => array(
      'openlayers_behavior_keyboarddefaults' => array(),
      'openlayers_behavior_navigation' => array(
        'zoomWheelEnabled' => 1,
      ),
      'openlayers_behavior_panzoombar' => array(),
    ),
    'default_layer' => 'world_light',
    'layers' => array(
      'world_light' => 'world_light',
    ),
    'layer_styles' => array(),
    'layer_activated' => array(),
    'layer_switcher' => array(),
    'projection' => '900913',
    'displayProjection' => '4326',
    'styles' => array(
      'default' => 'airport',
      'select' => 'airport',
      'temporary' => 'airport',
    ),
  );
  $export['blog_map'] = $openlayers_presets;

  return $export;
}
