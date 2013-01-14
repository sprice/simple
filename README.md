## A simple Drupal distibution.

### Build

Ensure `drush`[1] is installed on your system.

    git clone http://github.com/sprice/simple
    mkdir profiles
    mv simple profiles/
    mkdir public_html
    mv profiles public_html/
    cd public_html
    drush make --prepare-install --contrib-destination=profiles/simple profiles/simple/build-simple.make --yes

### Notes

This project contains a distro features module, `simple_config`.

At this time, Simple does not attempt to maintain backwards compatability
between updates.

### Thanks

Built on top of [Build Kit](http://drupal.org/project/buildkit)

[1] http://drupal.org/project/drush
