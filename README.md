# DLTN Web Portal - Vagrant

A vagrant repository for developing the Digital Library of Tennessee's web portal in a shared environment.

## Requirements

1. [VirtualBox](https://www.virtualbox.org/)
	* Be sure to install the version of VirtualBox that is [compatible with Vagrant](https://www.vagrantup.com/docs/virtualbox/). 
2. [Vagrant](http://www.vagrantup.com/)
3. [git](https://git-scm.com/)

Note that virtualization must be enabled in the host machine's BIOS settings.

## Use

1. git clone https://github.com/DigitalLibraryofTennessee/dltn_web_portal_vagrant
2. cd dltn_web_portal_vagrant
3. vagrant up

## Login to server

1. **Option 1**: vagrant ssh 
2. **Option 2**: ssh -p 2222 vagrant@localhost with password 'vagrant'

**Note**: you can secure copy with:

* scp -P 2222 vagrant@localhost

## Access Test Site

1. http://localhost:8080

**Note**: Site runs on 8080 so make sure you don't have conflicts.