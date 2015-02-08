#
# Cookbook Name:: yewton-emacs
# Recipe:: default
#
# Copyright 2015, yewton
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

include_recipe 'build-essential::default'

[
  'x-window-system',
  'task-japanese',
  'cmigemo',
  'aspell',
  'curl',
  'cvs',
  'python',
  'git',
  'automake',
  'subversion'
].each do |pkg|
  apt_package "yewton-emacs: #{pkg}" do
    package_name pkg
  end
end

execute 'apt-get -y build-dep emacs23'

ark 'emacs' do
  version node['yewton']['emacs']['version']
  url node['yewton']['emacs']['url']
  checksum 'a93c4f1afa5ade65a0c9723975f0a5fdf6641cc4638fdafb3ed9942c23c32cc6'
  autoconf_opts node['yewton']['emacs']['autoconf_opts']
  action :install_with_make
end

emacs_dir = '/root/.emacs.d'

git emacs_dir do
  repository 'https://github.com/yewton/dot-emacs.git'
  revision '24.4.x'
  enable_submodules true
  action :sync
end

execute "emacs --batch -Q -l #{emacs_dir}/init.el"
