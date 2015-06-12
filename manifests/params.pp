class drupal::params {
  $admin_pass = hiera('drupal::admin_pass')
  $user       = hiera('drupal::db_user')
  $pass       = hiera('drupal::db_pass')
  $host       = hiera('drupal::db_host')
  $db_name    = hiera('drupal::db_name')
  
  $db_url = "mysql://${user}:${pass}@${host}/${db_name}"
}
