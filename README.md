## A simple Drupal distibution.

### Build

Copy the `simple_distro.make` file to your system and run with `drush make` [1][2]

    $ curl -O https://github.com/sprice/simple/raw/6.x/simple_distro.make
    $ drush make --working-copy simple_distro.make public_html

### Thanks

Built on top of [Build Kit](http://drupal.org/project/buildkit)

[1] http://drupal.org/project/drush

[2] http://drupal.org/project/drush_make