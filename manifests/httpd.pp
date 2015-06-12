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
class drupal::httpd {
  class { 'apache':
    default_mods  => false,
    default_vhost => false,
    mpm_module    => 'prefork',
  }
  include apache::mod::deflate
  include apache::mod::mime
  include apache::mod::autoindex
  include apache::mod::rewrite
  class { 'apache::mod::status':
    allow_from => ['127.0.0.1', '129.215.169', $fqdn],
  }
  include apache::mod::php

  $default_home = '/var/www/html'
  apache::vhost { 'drupal':
    port            => 80,
    serveradmin     => "root@$fqdn",
    priority        => '14',
    docroot         => $default_home,
    override        => ['all'],
  }
}

