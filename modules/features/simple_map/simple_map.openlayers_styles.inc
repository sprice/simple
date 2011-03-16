<?php

/**
 * Implementation of hook_openlayers_styles().
 */
function simple_map_openlayers_styles() {
  $export = array();

  $openlayers_styles = new stdClass;
  $openlayers_styles->disabled = FALSE; /* Edit this to true to make a default openlayers_styles disabled initially */
  $openlayers_styles->api_version = 1;
  $openlayers_styles->name = 'simple';
  $openlayers_styles->title = 'Simple pin';
  $openlayers_styles->description = 'Simple pin';
  $openlayers_styles->data = array(
    'pointRadius' => 8,
    'fillColor' => '#3F497A',
    'strokeColor' => '#3F497A',
    'strokeWidth' => 1,
    'fillOpacity' => 0.7,
    'strokeOpacity' => 0.9,
    'strokeLinecap' => 'round',
    'strokeDashstyle' => 'solid',
    'cursor' => 'pointer',
    'graphicOpacity' => 1,
    'labelAlign' => 'cm',
  );
  $export['simple'] = $openlayers_styles;

  return $export;
}
