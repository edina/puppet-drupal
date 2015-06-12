<?php

$aliases["beta"] = array (
  'root' => '/home/delsmore/drupal_dev',
  'uri' => 'devel.edina.ac.uk',
  'remote-host' => 'devel.edina.ac.uk',
  'remote-user' => 'delsmore',
  'path-aliases' => array (
    '%drush' => '/home/delsmore/local/drush',
    '%site' => 'sites/default/',
    '%files' => 'sites/default/files',
  ),
  'name' => 'dev-edina',
  'databases' => array (
    'default' => array (
      'default' => array (
        'database' => 'drupal_dev',
        'username' => 'delsmore',
        'password' => 'Squ1dP1ck',
        'host' => 'devel.edina.ac.uk',
        'port' => '',
        'driver' => 'mysql',
        'prefix' => '',
      ),
    ),
  ),
);
$aliases["dev"] = array (
  'root' => '/var/www/drupal',
  'uri' => 'http://192.168.56.20/',
  'name' => 'self',
  'path-aliases' => array (
    '%drush' => '/usr/local/bin/drush',
    '%site' => 'sites/default/',
  ),
'databases' => array (
    'default' => array (
      'default' => array (
        'database' => 'devsite_beta',
        'username' => 'devsite',
        'password' => 'H0rndBreech',
        'host' => 'mysql.edina.ac.uk',
        'port' => '',
        'driver' => 'mysql',
        'prefix' => '',
      ),
    ),
  ),
);








// // local alias
// // TODO: Make this a template
// $local_sites = '/var/www/drupal/sites/';
// 
// $aliases['dev'] = array(
//   'root'         => $local_sites . 'default',
//   'path-aliases' => array(
//     '%dump-dir' => '/tmp',
//     '%files'    => $local_sites . 'default/files'
//   )
// );
// 
// $remote_sites = '/home/delsmore/drupal_dev';
// 
// $aliases['beta'] = array(
//   'remote-user'  => 'delsemore',
//   'remote-host'  => 'devel.edina.ac.uk',
//   'root'         => $remote_sites,
//   'path-aliases' => array(
//     '%dump-dir' => '/tmp',
//     '%files'    => $remote_sites . 'default/files'
//   )
// );
// 
// //$aliases['beta'] = array (
// //  'remote-host' => 'devel.edina.ac.uk',
// //  'remote-user' => 'delsmore',
// //  'root' => '/home/delsmore/drupal_dev',
// //  'uri' => 'http://devel.edina.ac.uk:50506',
// //  'path-aliases' => array (
// //    '%drush' => '/home/delsmore/local/drush',
// //    '%site' => 'sites/default/',
// //  ),
// //  'name' => 'dev-edina',
// //  'databases' => array (
// //    'default' => array (
// //      'default' => array (
// //        'database' => 'drupal_dev',
// //        'username' => '[name]',
// //        'password' => '[password]',
// //        'host' => 'devel.edina.ac.uk',
// //        'port' => '',
// //        'driver' => 'mysql',
// //        'prefix' => '',
// //      ),
// //    ),
// //  ),
// //);
?>
