class postfix::service {

  if ! ($postfix::params::service_ensure in [ 'running', 'stopped' ]) {
    fail('service_ensure parameter must be running or stopped')
  }

  service { 'postfix':
    ensure  => $postfix::params::service_ensure,
    require => Class['postfix::config'],
  }
}
