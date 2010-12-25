## A simple Drupal distibution.

### Build

Copy the `simple_distro.make` file to your system and run with `drush make` [1][2]

    $ curl -O https://github.com/sprice/simple/raw/6.x/simple_distro.make
    $ drush make --working-copy simple_distro.make public_html

### Notes

Due to an [issue](http://drupal.org/node/545452) with Drupal, the following
needs to be added to the `settings.php` file:

    /**
    * Store install profile in the generated settings.php file
    * http://drupal.org/node/545452
    */
    $profile = 'simple';
    $install_profile = 'simple';
    $conf['install_profile'] = 'simple';

### Thanks

Built on top of [Build Kit](http://drupal.org/project/buildkit)

[1] http://drupal.org/project/drush

[2] http://drupal.org/project/drush_make