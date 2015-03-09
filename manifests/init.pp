# == Class: drupal
#
# Create installation of drupal if it doesn't already exist.
#
# === Parameters
#
# Document parameters here.
#
# [drupal_dir]
#   Installation directory. Default location is '/var/www/drupal'
#
# === Examples
#
#  class { 'drupal':
#    drupal_dir => '/usr/share',
#  }
#
# === Authors
#
# Author Name <author@domain.com>
#
# === Copyright
#
#
#
class drupal($drupal_dir = '/var/www') {
  include drush

  exec { "/usr/local/bin/drush dl --destination=$drupal_dir --drupal-project-rename=drupal --yes":
    creates => "$drupal_dir/README.txt"
  }
}
