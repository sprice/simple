<?php
// $Id$

/**
 * Return a description of the profile for the initial installation screen.
 *
 * @return
 *   An array with keys 'name' and 'description' describing this profile,
 *   and optional 'language' to override the language selection for
 *   language-specific profiles.
 */
function simple_profile_details() {
  return array(
    'name' => 'Simple',
    'description' => 'A simple installation profile.'
  );
}

/**
 * Return an array of the modules to be enabled when this profile is installed.
 *
 * @return
 *   An array of modules to enable.
 */
function simple_profile_modules() {
  // Core
  return array('color', 'comment', 'help', 'menu', 'taxonomy', 'dblog',
  // Contrib
  'admin', 'content', 'content_permissions', 'ctools', 'diff', 'features',
  'pathauto', 'strongarm', 'token', 'views', 'views_ui',
  );
}



/**
 * Return a list of tasks that this profile supports.
 *
 * @return
 *   A keyed array of tasks the profile will perform during
 *   the final stage. The keys of the array will be used internally,
 *   while the values will be displayed to the user in the installer
 *   task list.
 */
function simple_profile_task_list() {
  return array();
}

/**
 * Perform any final installation tasks for this profile.
 *
 * The installer goes through the profile-select -> locale-select
 * -> requirements -> database -> profile-install-batch
 * -> locale-initial-batch -> configure -> locale-remaining-batch
 * -> finished -> done tasks, in this order, if you don't implement
 * this function in your profile.
 *
 * If this function is implemented, you can have any number of
 * custom tasks to perform after 'configure', implementing a state
 * machine here to walk the user through those tasks. First time,
 * this function gets called with $task set to 'profile', and you
 * can advance to further tasks by setting $task to your tasks'
 * identifiers, used as array keys in the hook_profile_task_list()
 * above. You must avoid the reserved tasks listed in
 * install_reserved_tasks(). If you implement your custom tasks,
 * this function will get called in every HTTP request (for form
 * processing, printing your information screens and so on) until
 * you advance to the 'profile-finished' task, with which you
 * hand control back to the installer. Each custom page you
 * return needs to provide a way to continue, such as a form
 * submission or a link. You should also set custom page titles.
 *
 * You should define the list of custom tasks you implement by
 * returning an array of them in hook_profile_task_list(), as these
 * show up in the list of tasks on the installer user interface.
 *
 * Remember that the user will be able to reload the pages multiple
 * times, so you might want to use variable_set() and variable_get()
 * to remember your data and control further processing, if $task
 * is insufficient. Should a profile want to display a form here,
 * it can; the form should set '#redirect' to FALSE, and rely on
 * an action in the submit handler, such as variable_set(), to
 * detect submission and proceed to further tasks. See the configuration
 * form handling code in install_tasks() for an example.
 *
 * Important: Any temporary variables should be removed using
 * variable_del() before advancing to the 'profile-finished' phase.
 *
 * @param $task
 *   The current $task of the install system. When hook_profile_tasks()
 *   is first called, this is 'profile'.
 * @param $url
 *   Complete URL to be used for a link or form action on a custom page,
 *   if providing any, to allow the user to proceed with the installation.
 *
 * @return
 *   An optional HTML string to display to the user. Only used if you
 *   modify the $task, otherwise discarded.
 */
function simple_profile_tasks(&$task, $url) {

  // Update the menu router information.
  menu_rebuild();

  // Rebuild the schema cache.
  drupal_get_schema(NULL, TRUE);

  // Clear caches.
  drupal_flush_all_caches();

  // Enable default theme
  db_query("UPDATE {blocks} SET status = 0, region = ''");
  db_query("UPDATE {system} SET status = 0 WHERE type = 'theme'");
  db_query("UPDATE {system} SET status = 1 WHERE type = 'theme' AND name = 'singular'");
  variable_set('theme_default', 'singular');
  variable_set('admin_theme', 'rubik');


  // Insert default user-defined node types into the database. For a complete
  // list of available node type attributes, refer to the node type API
  // documentation at: http://api.drupal.org/api/HEAD/function/hook_node_info.
  $types = array(
    array(
      'type' => 'blog',
      'name' => st('Blog post'),
      'module' => 'node',
      'description' => st("A <em>blog post</em>, is ideal for creating and displaying content that informs or engages website visitors. Press releases, site announcements, and informal blog-like entries may all be created with a <em>story</em> entry. By default, a <em>story</em> entry is automatically featured on the site's initial home page, and provides the ability to post comments."),
      'custom' => TRUE,
      'modified' => TRUE,
      'locked' => FALSE,
      'help' => '',
      'min_word_count' => '',
    ),
  );

  foreach ($types as $type) {
    $type = (object) _node_type_set_defaults($type);
    node_type_save($type);
  }

  // Generate blog posts, comments.
  node_types_rebuild();
  module_load_include('inc', 'devel_generate', 'devel_generate');

  // Rebuild access lists.
  node_access_rebuild();
  
  // Create users
  for ($i = 0; $i < 2; $i++) {
    $account = array(
      'name' => devel_generate_word(mt_rand(6, 12)),
      'pass' => user_password(),
      'mail' => devel_generate_word(mt_rand(6, 12)) . '@' . $url['host'],
      'roles' => array(3 => 3, 4 => 4),
    );
    user_save(NULL, $account);
  }

  // Create blog posts.
  $generate = array();
  $generate['kill_content'] = FALSE;
  $generate['time_range'] = 604800;
  $generate['max_comments'] = 0;
  $generate['title_length'] = 8;
  $generate['add_upload'] = FALSE;
  $generate['add_terms'] = FALSE;
  $generate['add_alias'] = FALSE;
  $generate['add_statistics'] = FALSE;

  $blog = array('values' => $generate);
  $blog['values']['node_types'] = array('blog' => TRUE);
  $blog['values']['num_nodes'] = 30;
  $blog['values']['max_comments'] = 10;
  devel_generate_content($blog);

}

/**
 * Implementation of hook_form_alter().
 *
 * Allows the profile to alter the site-configuration form. This is
 * called through custom invocation, so $form_state is not populated.
 */
function simple_form_alter(&$form, $form_state, $form_id) {
  if ($form_id == 'install_configure') {
    // Set default for site name field.
    $form['site_information']['site_name']['#default_value'] = $_SERVER['SERVER_NAME'];
  }
}