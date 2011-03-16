<?php

/**
 * Implementation of hook_taxonomy_default_vocabularies().
 */
function simple_map_taxonomy_default_vocabularies() {
  return array(
    'location' => array(
      'name' => 'Location',
      'machine_name' => 'location',
      'description' => 'Places, including latitude and longitude.',
      'hierarchy' => '0',
      'module' => 'taxonomy',
      'weight' => '0',
    ),
  );
}
