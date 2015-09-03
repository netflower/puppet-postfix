# Postfix

[![Build Status](https://travis-ci.org/netflower/puppet-postfix.svg)](https://travis-ci.org/netflower/puppet-postfix)

Puppet module to install and manage Postfix.

## Usage

Include the `postfix` class in your manifest to install it.

```puppet
include postfix
```

If you not set any parameters, Postfix will be installed with its default configuration with the nodes fqdn set as needed.
The main purpose of this module is to configure aliases from user accounts to other user accounts or mail addresses.

```puppet
class { 'postfix':
  aliases => {
    'root' => 'user'
    'user' => 'user@example.com'
  }
}
```

Here is an example declaring the class with the full list of available parameters and their defaults:

```puppet
class { 'postfix':
  aliases              => {},
  config_file          => '/etc/postfix/main.cf',
  config_file_template => 'postfix/main.cf.erb',
  inet_interfaces      => 'loopback-only',
  myhostname           => $fqdn,
  mydestination        => "${fqdn}, localhost",
  package_name         => 'postfix',
  service_ensure       => 'running'
}
```
