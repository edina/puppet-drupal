class drupal::download {
  # exec { "download_drupal":
  #   command => "/usr/local/bin/drush dl --destination=$drupal::root_dir --drupal-project-rename=$drupal::site_name --yes",
  #   creates => "$drupal::drupal_dir/README.txt",
  #   logoutput => true,
  # }
}
