<?php

/**
 * Implementation of hook_openlayers_presets().
 */
function simple_map_openlayers_presets() {
  $export = array();

  $openlayers_presets = new stdClass;
  $openlayers_presets->disabled = FALSE; /* Edit this to true to make a default openlayers_presets disabled initially */
  $openlayers_presets->api_version = 1;
  $openlayers_presets->name = 'blog_posts';
  $openlayers_presets->title = 'Blogposts';
  $openlayers_presets->description = 'A blog post preset';
  $openlayers_presets->data = array(
    'width' => 'auto',
    'height' => '400px',
    'image_path' => 'http://js.mapbox.com/theme/dark/',
    'css_path' => '',
    'proxy_host' => '',
    'hide_empty_map' => 0,
    'center' => array(
      'initial' => array(
        'centerpoint' => '-50.176557339697, 25.277070172716',
        'zoom' => '2',
      ),
      'restrict' => array(
        'restrictextent' => 0,
        'restrictedExtent' => '',
      ),
    ),
    'behaviors' => array(
      'openlayers_behavior_attribution' => array(),
      'openlayers_behavior_keyboarddefaults' => array(),
      'openlayers_behavior_layerswitcher' => array(
        'ascending' => 1,
      ),
      'openlayers_behavior_navigation' => array(
        'zoomWheelEnabled' => 1,
      ),
      'openlayers_behavior_panzoombar' => array(),
    ),
    'default_layer' => 'world_light',
    'layers' => array(
      'world_light' => 'world_light',
      'blog_geo_openlayers_1' => 'blog_geo_openlayers_1',
    ),
    'layer_styles' => array(
      'blog_geo_openlayers_1' => 'simple',
    ),
    'layer_activated' => array(
      'blog_geo_openlayers_1' => 'blog_geo_openlayers_1',
    ),
    'layer_switcher' => array(
      'blog_geo_openlayers_1' => 0,
    ),
    'projection' => '900913',
    'displayProjection' => '4326',
    'styles' => array(
      'default' => 'airport',
      'select' => 'airport',
      'temporary' => 'airport',
    ),
  );
  $export['blog_posts'] = $openlayers_presets;

  return $export;
}
