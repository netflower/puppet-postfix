# postfix
#
# Parameters:
#
# Usage:
#
#   class { 'postfix':
#     aliases => {
#       'user' => 'user@example.com'
#     }
#   }
#
class postfix (

  $aliases              = $postfix::params::aliases,
  $config_file          = $postfix::params::config_file,
  $config_file_template = $postfix::params::config_file_template,
  $inet_interfaces      = $postfix::params::inet_interfaces,
  $myhostname           = $postfix::params::myhostname,
  $mydestination        = $postfix::params::mydestination,
  $package_name         = $postfix::params::package_name,
  $service_ensure       = $postfix::params::service_ensure,
) inherits postfix::params {

  include postfix::install, postfix::config, postfix::service
}
