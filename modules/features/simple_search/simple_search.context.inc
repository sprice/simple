<?php

/**
 * Implementation of hook_context_default_contexts().
 */
function simple_search_context_default_contexts() {
  $export = array();

  $context = new stdClass;
  $context->disabled = FALSE; /* Edit this to true to make a default context disabled initially */
  $context->api_version = 3;
  $context->name = 'search';
  $context->description = '';
  $context->tag = 'simple';
  $context->conditions = array(
    'path' => array(
      'values' => array(
        'search?*' => 'search?*',
      ),
    ),
  );
  $context->reactions = array(
    'block' => array(
      'blocks' => array(
        'searchlight-facets_search_node' => array(
          'module' => 'searchlight',
          'delta' => 'facets_search_node',
          'region' => 'help',
          'weight' => 0,
        ),
      ),
    ),
  );
  $context->condition_mode = 0;

  // Translatables
  // Included for use with string extractors like potx.
  t('simple');
  $export['search'] = $context;

  return $export;
}
