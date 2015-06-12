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
class drupal {
  include drupal::params
  include drupal::mysql
  include php
  include drush
  include drupal::dependencies
  include drupal::install             
  include drupal::httpd
}
