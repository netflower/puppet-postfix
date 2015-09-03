class postfix::params {

  $aliases              = {}
  $config_file          = '/etc/postfix/main.cf'
  $config_file_template = 'postfix/main.cf.erb'
  $inet_interfaces      = 'loopback-only'
  $myhostname           = $::fqdn
  $mydestination        = "${::fqdn}, localhost"
  $package_name         = 'postfix'
  $service_ensure       = 'running'
}
