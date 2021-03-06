## vagrant-kitchen-chef-server-cookbook
### Supported Platforms

## CentOS 6.4

## Default parameters
### vagrant-kitchen-chef-server::default
```
default['chef-server']['url'] = 'https://web-dl.packagecloud.io/chef/stable/packages/el/6/chef-server-core-12.0.0-1.el6.x86_64.rpm'
```

## Usage

### vagrant-kitchen-chef-server::default

Include `vagrant-kitchen-chef-server` in your node's `run_list`:

```json
{
  "run_list": [
    "recipe[vagrant-kitchen-chef-server::default]"
  ]
}
```
Local dev kitchen setup:
```
git clone https://github.com/naumchenko/vagrant-kitchen-chef-server.git

cd vagrant-kitchen-chef-server; kitchen converge

sudo echo "33.33.33.10 chef-server-centos-64.vagrantup.com" >> /etc/hosts
```
Open in browser URL: https://33.33.33.10

### Run Chef webgui from alternative port
in `attributes/default.rb` add the following
```
default['chef-server']['configuration']['nginx']['ssl_port'] = 8443
```

To run from a private IP
open `kitchen.yml` and under `driver:``, changing the private ip to whatever you want

```
driver:
  name: vagrant
  network:
  - ["private_network", {ip: "33.33.33.10"}]
```
## License and Authors

Authors: Alex Naumchenko, Nick Mancuso
