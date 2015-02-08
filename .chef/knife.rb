def repo(path)
  File.join(__dir__, '..', path)
end

chef_repo_path repo('.')

cookbook_path [repo('cookbooks')]
role_path repo('roles')
node_path repo('nodes')
environment_path repo('environments')
data_bag_path repo('data_bags')

cookbook_copyright 'yewton'
cookbook_email 'yewton@gmail.com'
cookbook_license 'apachev2'

log_level :info

local_mode true

chef_zero.enabled true
chef_zero.port '18889-19999'

data_bag_encrypt_version 2
