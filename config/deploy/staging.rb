server '10.0.1.161',
  user: 'deploy',
  roles: %w{app db},
  ssh_options: {
    proxy: Net::SSH::Proxy::Command.new('ssh -W %h:%p weplanr@52.70.111.48')
  }
