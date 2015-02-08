default['yewton']['emacs']['version'] = '24.4'
default['yewton']['emacs']['url'] = "http://ftp.gnu.org/gnu/emacs/emacs-#{node.yewton.emacs.version}.tar.gz"
#default['yewton']['emacs']['url'] = "http://ftp.gnu.org/gnu/emacs/emacs-#{node['yewton']['emacs']['version']}.tar.gz"
default['yewton']['emacs']['autoconf_opts'] = %w()
