class drupal::install {
  $admin_pass = hiera('drupal::admin_pass')
  $user = hiera('drupal::db_user')
  $pass = hiera('drupal::db_pass')
  $host = hiera('drupal::db_host')
  $db_name = hiera('drupal::db_name')
  $db_url = "mysql://${user}:${pass}@${host}/${db_name}"

  exec { "install_drupal":
    command => "/usr/local/bin/drush site-install standard --account-pass=${admin_pass} --db-url=${db_url} --yes",
    cwd => $drupal::drupal_dir,
    unless => "/usr/local/bin/drush core-status | grep 'Drupal bootstrap.*Successful'",
    logoutput => true,
    subscribe => [Exec['download_drupal'], Class['drupal::packages']]
  }
}
