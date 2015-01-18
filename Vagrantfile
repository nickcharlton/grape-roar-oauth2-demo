# -*- mode: ruby -*-
# vi: set ft=ruby ;

Vagrant.configure('2') do |config|
  config.vm.hostname = 'grape-roar-demo'
  config.vm.box = 'ruby-box'

  config.vm.network 'forwarded_port',
                    guest: 3000,
                    host: 3000,
                    auto_correct: true

  config.vm.provision 'shell', inline: 'sudo apt-get -yqq install libcurl3 '\
                      'libcurl3-gnutls libcurl4-openssl-dev libsqlite3-dev'
end
