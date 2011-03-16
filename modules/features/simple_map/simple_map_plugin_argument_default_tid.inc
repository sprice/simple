<?php
/**
 * @file
 * Determine a default argument from URL.
 *
 * From openpublic_projects_plugin_argument_default_tid.inc
 */
class simple_map_plugin_argument_default_tid extends views_plugin_argument_default {
  function get_argument() {
    sscanf($_GET['q'], 'node/%d', $nid);
    if (isset($nid) && is_numeric($nid) && $node = node_load($nid)) {
      if (isset($node->field_geoterm['und'][0]['tid'])) {
        return $node->field_geoterm['und'][0]['tid'];
      }
    }
  }
}
