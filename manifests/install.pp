class drupal::install {
  $admin_pass = hiera('drupal::admin_pass')
  $db_user    = hiera('drupal::db_user')
  $db_pass    = hiera('drupal::db_pass')
  $db_host    = hiera('drupal::db_host')
  $db_name    = hiera('drupal::db_name')
  $db_url     = "mysql://${db_user}:${db_pass}@${db_host}/${db_name}"
  $root_dir   = '/var/www/html'
  $site_name  = 'drupal'
  $drupal_dir = "${root_dir}/${site_name}"
  # $user       = 'root'
  # $home_dir   = "/${user}"
  # $drush_dir  = "${home_dir}/.drush"


  # File {
  #   owner  => "${user}",
  #   group  => "${user}",
  # }    
  
  # file { "${home_dir}":
  #   ensure => 'directory',
  #   path   => "${home_dir}",
  #   mode   => 750,
  #   # require => [
  #   #   User["${user}"],          
  #   # ]
  # }

  # file { "${drush_dir}":
  #   ensure  => 'directory',
  #   path    => "${drush_dir}",
  #   mode    => 750,
  #   require => [
  #     # File["${home_dir}"],          
  #     Exec['download_drupal'],          
  #   ]
  # }

  # file { "${drush_dir}/aliases.drushrc.php":
  #   ensure  => 'present',
  #   source  => 'puppet:///modules/drupal/aliases.drushrc.php',
  #   require => File["${drush_dir}"],
  # }


  exec { 'download_drupal':
    command   => "/usr/local/bin/drush dl --destination=${root_dir} --drupal-project-rename=${site_name}",
    creates   => "${drupal_dir}/README.txt",
    logoutput => true,
    onlyif    => '/usr/local/bin/drush',
  }

  exec { 'install_drupal':
    command   => "/usr/local/bin/drush si standard --account-pass=${admin_pass} --db-url=${db_url} --yes",
    cwd       => "${drupal_dir}",
    unless    => "/usr/local/bin/drush core-status | grep 'Drupal bootstrap.*Successful'",
    logoutput => true,
    subscribe => [Exec['download_drupal'], Class['drupal::dependencies']],
    onlyif  => '/usr/local/bin/drush'
  }
}
