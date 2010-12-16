## A simple Drupal distibution (Searchlight Edition)

### Build

Copy the `simple_distro.make` file to your system and run with `drush make` [1][2]

    $ curl -O -k https://github.com/sprice/simple/raw/searchlight/simple_distro.make
    $ drush make --working-copy simple_distro.make public_html

### Searchlight

Read the Searchlight [REAMDE](https://github.com/yhahn/searchlight/blob/drupal-7--1/README.markdown) and [INSTALL](https://github.com/yhahn/searchlight/blob/drupal-7--1/INSTALL.markdown) files carefully.

The included `simple_search` feature contains some decent defaults to get started with Searchlight.

Update your `settings.php` file to include:

     $conf['searchlight_backend_sphinx']['sql_sock'] = '/tmp/mysql.sock';

The path to your `mysql.sock` may be different. If you are running MAMP it is probably `/Applications/MAMP/tmp/mysql/mysql.sock`

For help installing Sphinx with OSX 10.6 and MAMP 1.9.4 [read this](https://gist.github.com/742897).

### Thanks

Built on top of [Build Kit](http://drupal.org/project/buildkit)

[1] http://drupal.org/project/drush

[2] http://drupal.org/project/drush_make
