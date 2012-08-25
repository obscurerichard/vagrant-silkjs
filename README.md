Vagrant Template for SilkJS
===========================

by Richard Bullington-McGuire <richard@moduscreate.com>

Description
-----------

This [Vagrant](http://vagrantup.com/) project uses [Chef](http://www.opscode.com/chef/) cookbook to install [SilkJS](http://silkjs.org/), a high-performance server-side JavaScript framework with a threaded, pre-fork, top-to-bottom, left-to-right execution model.


Requirements
------------

You will need Vagrant and [VirtualBox](http://virtualbox.org/], and [Git](http://git-scm.com/)  to use this Vagrantfile.

It has been tested on Ubuntu Lucid Lynx 8.04, using the Vagrant lucid32 box.


Installation
==========

Once you have installed Vagrant, VirtualBox, and Git, you should be able to install SilkJS on the Vagrant guest by doing these commands:

    git clone --recursive https://github.com/obscurerichard/vagrant-silkjs
    cd vagrant-silkjs
    vagrant up

If you have cloned the repository, but nothing appears under the
cookbooks/silkjs directory, you may need to do this to pull in the git
submodules:

    git submodule init
    git submodule update

Then try doing `vagrant up` again.

License
-------

The main scripts are covered under the MIT license. See the LICENSE file for full details.

