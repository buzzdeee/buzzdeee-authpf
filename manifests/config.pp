# Private class, do not use directly.
# The class that drives the main authpf.conf
# configuration.
class authpf::config {
  file { '/etc/authpf':
    ensure => 'directory',
    owner  => 'root',
    group  => '0',
    mode   => '0755',
  }
  file { '/etc/authpf/authpf.conf':
    ensure  => 'present',
    owner   => 'root',
    group   => '0',
    mode    => '0644',
    require => File['/etc/authpf'],
  }
  file { '/etc/authpf/authpf.rules':
    ensure  => 'present',
    owner   => 'root',
    group   => '0',
    mode    => '0644',
    require => File['/etc/authpf'],
  }

}
