## vagrant-kitchen-chef-server-cookbook
### Supported Platforms

### - CentOS 

## Default parameters
### vagrant-kitchen-chef-server::default
```
default['chef-server']['url'] = 'https://web-dl.packagecloud.io/chef/stable/packages/el/6/chef-server-core-12.0.0-1.el6.x86_64.rpm'
default['chef-server']['configuration']['nginx']['ssl_port'] = 8443
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

## License and Authors

Author: Alex Naumchenko

