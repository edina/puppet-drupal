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
class drupal($root_dir = '/var/www') {
  include [drush, php]

  $site_name = 'drupal'
  $drupal_dir = "$root_dir/$site_name"

  contain drupal::packages

  exec { "download_drupal":
    command => "/usr/local/bin/drush dl --destination=$root_dir --drupal-project-rename=$site_name --yes",
    creates => "$drupal::drupal_dir/README.txt",
    logoutput => true,
  }
}
