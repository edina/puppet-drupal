class drupal::dependencies {
  package { 'php-xml':
    ensure => installed,
  }
  package { 'php-pdo':
    ensure => installed,
  }
  package { 'php-mysql':
    ensure => installed,
  }
  package { 'php-gd':
    ensure => installed,
  }
}
