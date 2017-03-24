# A vagrant repository for developing the Digital Library of Tennessee's web portal in a shared environment.

Vagrant.configure(2) do |config|
  unless  $forward.eql? "FALSE"
      config.vm.network :forwarded_port, guest: 8080, host: 8080, auto_correct: true # Flask
  end

  config.vm.box_download_insecure = "geerlingguy/ubuntu1604"
  config.vm.box = "geerlingguy/ubuntu1604"

  shared_dir = "/vagrant"
  config.vm.provision :shell, path: "./scripts/setup_flask.sh", :args => shared_dir, :privileged => false
end