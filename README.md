#Things With Prototypes

**tw-prototype** is a collection of Ruby based tools to help assist front-end development or build rapid prototypes.

  - [Sinatra](http://www.sinatrarb.com/) adds a simple application framework
  - [HAML](http://haml-lang.com/) & [SASS](http://sass-lang.com/) for creating smart, DRY website templates
  - [Compass](http://compass-style.org/) is a CSS framework based in SASS
  - [HTML5 Boilerplate](http://html5boilerplate.com/) for collection of best-practice page defaults for modern web development
  - [Vagrant](http://vagrantup.com/) is a pre-packaged dev environment wrapped in a VM
  
____ 
           
##Requirements

**tw-prototype** requires a working of installation of Ruby. If you don't have Ruby installed, using [RVM](https://rvm.beginrescueend.com/) is recommended.

If you're not using Vagrant, you'll need to install the Bundler gem:

    $ gem install bundler

Run the bundle install in the root directory of the project:

    $ bundle install

Use your favorite Rack-based server to start the Sinatra app.
 

##Using Vagrant

If you don't already have a development environment installed, **tw-prototype** comes with it's own [Vagrant](http://vagrantup.com/) configuration, making it trivial to boot up virtual machine that can be used for development.

Vagrant assumes you already have [VirtualBox](http://www.virtualbox.org/) installed, which is open source and free.

    $ gem install vagrant
    $ vagrant box add base http://files.vagrantup.com/lucid32.box
    $ vagrant up
    
Each of these steps may take a few minutes to execute. If all go well, you'll have a Linux VM booted up with Ruby, Git, and Sqlite pre-installed. If you want to customize the base packages, you can add more to the recipe in `config/cookbooks/vargrant_main` folder. Be sure to read up on [Chef provisioning](http://vagrantup.com/docs/provisioners/chef_solo.html) and visit the Opscode [cookbook repository](https://github.com/opscode/cookbooks) for more recipes.

Once the VM is booted, you can access the machine via SSH with the following command:

    $ vagrant ssh
    
Vagrant shares your project root directory with the VM in the `/vagrant` directory. This is where we can serve the application from. We'll need to run the bundle installation and start our [Thin](http://code.macournoyer.com/thin/) server.

    $ cd /vagrant
    $ bundle install
    $ thin start -d -l log/thin.log
   
That's it! Point your browser to http://localhost:3030, and you should see your application's index page.

##Templates and Stylesheets

**tw-prototype** is based on several different libraries and frameworks. If you're not already familiar with [HAML](http://haml-lang.com/), [SASS](http://sass-lang.com/), [Compass](http://compass-style.org/), or [HTML5 Boilerplate](http://html5boilerplate.com/) it's time to start reading. But here are the basics:

  - HAML templates go in `views`
  - SASS files in `views/sass`
  - Images and Javascript go in the `public` folder, in their respective folders
    

    
   
