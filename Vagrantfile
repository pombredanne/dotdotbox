# Vagrantfile for testing dotansible box
#
# Optimized for 13.10 but will switch to 14.04 LTS soon!
#
# vagrant's autoloading may not have kicked in
require 'vagrant-vbguest'
# unless defined? VagrantVbguest::Config VagrantVbguest::Config.auto_update = false

Vagrant.configure("2") do |config|

  config.vbguest.no_remote = false
  config.vbguest.auto_update = true

  config.vm.define :dotdotboxlocal do |c|

    # c.vm.network :hostonly, "192.168.179.254"

    c.vm.network :private_network, ip: "192.168.179.254"
# , virtualbox__intnet: true

#    c.vm.network :forwarded_port, host: 5432, guest: 5432

    # c.vm.box = "saucy-server-cloudimg-amd64-vagrant-disk1"
    c.vm.box = "saucy64"
    c.vm.box_url = "http://cloud-images.ubuntu.com/vagrant/saucy/current/saucy-server-cloudimg-amd64-vagrant-disk1.box"

    c.vm.hostname = "dotdotboxlocal"

    c.vm.provision :shell, :inline => <<STRING
    sudo echo "dir::cache::archives /opt/cache/apt;" | sudo tee /etc/apt/apt.conf.d/80myhostcache > /dev/null
    if ! grep "PIP_DOWNLOAD_CACHE" /etc/environment > /dev/null; then
        echo "PIP_DOWNLOAD_CACHE=/opt/cache/pip"|sudo tee -a /etc/environment>/dev/null;
    fi

    if grep '^GRUB_RECORDFAIL_TIMEOUT=' /etc/default/grub ; then
      echo GOOD: /etc/default/grub
    else
      echo FIXING: /etc/default/grub
      perl -pi.bak -e 's/^(GRUB_TIMEOUT=.*\n)/${1}GRUB_RECORDFAIL_TIMEOUT=0\n/' \
       /etc/default/grub
       update-grub
     fi


STRING

#     c.vm.synced_folder "/opt/dotdotbox", "/opt/dotdotbox",
#    id: "ddb-code",
#    :owner=>"ddb",
#    :group=>"ddb",
#    :mount_options => ["dmode=775","fmode=775"]

    c.vm.synced_folder "/ext/hostcache", "/opt/cache", mount_options: ["dmode=777","fmode=777"]


    c.vm.provider :virtualbox do |vb|
       vb.customize ['modifyvm', :id, '--name', 'dotdotboxlocal', '--cpus', '2', '--memory', 1024]
    end

  end

end
0
