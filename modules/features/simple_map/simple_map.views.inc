<?php

/**
 * Implementation of hook_views_plugins().
 */
function simple_map_views_plugins() {
  $plugins = array(
    'argument default' => array(
      // This type of plugin does not conform to the standard and
      // uses 'fixed' as the parent rather than having a separate parent.
      'op_tid_by_nid' => array(
        'title' => t('Simple Map: location term by node id'),
        'handler' => 'simple_map_plugin_argument_default_tid',
        'parent' => 'fixed',
        'path' => drupal_get_path('module', 'simple_map'),
      ),
    ),
  );
  return $plugins;
}

