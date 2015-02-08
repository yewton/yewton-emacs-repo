require 'chef/provisioning/docker_driver'

with_driver 'docker'

machine_image 'yewton-emacs' do
  recipe 'debian'
  recipe 'apt'
  recipe 'the_silver_searcher'
  recipe 'yewton-emacs'
  attributes 'the_silver_searcher' => {
               'version' => '0.29.0',
               'checksum' => 'a274ee3aa2294ad77f856be666bc3d8dcc59a98b974a2039c53846f89c21cd22'
             },
             'debian' => {
               'deb_src' => true
             }
  machine_options :docker_options => {
                    :base_image => {
                      :name => 'debian',
                      :repository => 'debian',
                      :tag => 'wheezy'
                    }
                  }
end
