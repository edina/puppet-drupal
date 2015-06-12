# == Class: drupal::mysql
#
# The base class sets up MySql
#
# === Parameters
#
# No parameters
#
#
# === Example
#
# This is included in the main drupal class as follows
#    class { 'drupal::mysql': }
#
class drupal::mysql {
  # create DB for drupal
  mysql::db { 'drupal_db':
    dbname   => hiera('drupal::db_name'),
    user     => hiera('drupal::db_user'),
    password => hiera('drupal::db_pass'),
    host     => hiera('drupal::db_host'),
    grant    => ['SELECT', 'INSERT', 'UPDATE', 'DELETE', 'CREATE', 'DROP'],
  }
}
