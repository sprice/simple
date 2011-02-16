<?php

/**
 * Implementation of hook_context_default_contexts().
 */
function simple_config_context_default_contexts() {
  $export = array();

  $context = new stdClass;
  $context->disabled = FALSE; /* Edit this to true to make a default context disabled initially */
  $context->api_version = 3;
  $context->name = 'front_page';
  $context->description = '';
  $context->tag = '';
  $context->conditions = array();
  $context->reactions = array(
    'block' => array(
      'blocks' => array(
        'boxes-welcome' => array(
          'module' => 'boxes',
          'delta' => 'welcome',
          'region' => 'content',
          'weight' => 0,
        ),
      ),
    ),
  );
  $context->condition_mode = 0;
  $export['front_page'] = $context;

  return $export;
}
