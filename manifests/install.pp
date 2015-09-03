class postfix::install inherits postfix::params {
  package { $postfix::params::package_name:
    ensure => installed,
  }
}
