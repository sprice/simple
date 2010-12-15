<?php

/**
 * Implementation of hook_user_default_permissions().
 */
function simple_config_user_default_permissions() {
  $permissions = array();

  // Exported permission: access content
  $permissions['access content'] = array(
    'name' => 'access content',
    'roles' => array(
      '0' => 'anonymous user',
    ),
  );

  return $permissions;
}
