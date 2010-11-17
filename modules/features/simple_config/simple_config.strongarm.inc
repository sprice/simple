<?php

/**
 * Implementation of hook_strongarm().
 */
function simple_config_strongarm() {
  $export = array();

  $strongarm = new stdClass;
  $strongarm->disabled = FALSE; /* Edit this to true to make a default strongarm disabled initially */
  $strongarm->api_version = 1;
  $strongarm->name = 'site_name';
  $strongarm->value = 'Simple';
  $export['site_name'] = $strongarm;

  return $export;
}
