## A simple Drupal distibution. Mapping Edition.

### Build

Copy the `simple_distro.make` file to your system and run with `drush make` [1][2]

    $ curl -O https://github.com/sprice/simple/blob/mapping/simple_distro.make
    $ drush make --working-copy simple_distro.make public_html

### Use

Create a number of Location terms with map points. Create a blog post and select
a location term. *Bam* *Map*

### Notes

This project contains a distro features module, `simple_config` and a mapping feature,
`simple_map`.

At this time, Simple does not attempt to maintain backwards compatability
between updates.

### Thanks

Built on top of [Build Kit](http://drupal.org/project/buildkit)

[1] http://drupal.org/project/drush

[2] http://drupal.org/project/drush_make
