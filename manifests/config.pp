class postfix::config inherits postfix {

  file { $postfix::params::config_file:
    mode    => '0664',
    content => template($postfix::params::config_file_template),
    require => Class['postfix::install'],
    notify  => Class['postfix::service'],
  }

  file { '/etc/mailname':
    ensure  => 'file',
    content => $::fqdn,
  }

  file { '/etc/aliases':
    ensure  => 'file',
    content => template('postfix/aliases.erb'),
    notify  => Exec['newaliases'],
  }

  # Update aliases db
  exec { 'newaliases':
    command     => '/usr/bin/newaliases',
    refreshonly => true,
    subscribe   => File['/etc/aliases'],
  }
}
