class drupal::config ($drupal_dir = '/var/www/drupal'){
  $db_name = hiera('drupal::db_name')
  $db_user = hiera('drupal::db_user')
  $db_host = hiera('drupal::db_host')
  $db_pass = hiera('drupal::db_pass')

  file { "$drupal_dir/sites/default/settings.php":
    content => template('drupal/settings.erb'),
  }
}
