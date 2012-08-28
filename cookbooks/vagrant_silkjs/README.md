Description
===========

This [Chef](http://www.opscode.com/chef/) cookbook installs 
[SilkJS](http://silkjs.org/), a high-performance server-side JavaScript framework with a top-to-bottom-left-to-right, synchronous, prefork multiprocess execution model.

Requirements
============

This requires the "apt" and "git" OpsCode [community cookbooks](http://community.opscode.com/).

It has been tested on Ubuntu Lucid Lynx 8.04, using the Vagrant lucid32 box.


Attributes
==========
node [:vagrant_silkjs][:src] = Etc.getpwuid.dir + File::SEPARATOR + "SilkJS"
default[:vagrant_silkjs][:user] = "root"
default[:vagrant_silkjs][:git] = "https://github.com/mschwartz/SilkJS.git"

Usage
=====

