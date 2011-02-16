<?php

/**
 * Implementation of hook_default_box().
 */
function simple_config_default_box() {
  $export = array();

  $box = new stdClass;
  $box->disabled = FALSE; /* Edit this to true to make a default box disabled initially */
  $box->api_version = 1;
  $box->delta = 'welcome';
  $box->plugin_key = 'simple';
  $box->title = 'Welcome to Simple';
  $box->description = 'Welcome box';
  $box->options = array(
    'body' => array(
      'value' => 'Simple is an example Drupal 7 distribution. [Fork this project on GitHub](https://github.com/sprice/simple).',
      'format' => 'markdown',
    ),
  );
  $export['welcome'] = $box;

  return $export;
}
