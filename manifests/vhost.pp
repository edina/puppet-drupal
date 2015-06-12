# == Class: drupal::httpd
#
# The base class sets up Apache
# plus a virtual host
#
# === Parameters
#
# No parameters
#
#
# === Example
#
# This is included in the main geodev class as follows
#    class { 'drupal::httpd': }
#
class drupal::httpd::vhost {
  $default_home = '/var/www/html/drupal'
  apache::vhost { 'drupal':
    port            => 80,
    serveradmin     => "root@$fqdn",
    priority        => '14',
    docroot         => $default_home,
    override        => ['all'],
  }
}
