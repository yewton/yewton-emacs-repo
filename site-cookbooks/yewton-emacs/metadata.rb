name             'yewton-emacs'
maintainer       'yewton'
maintainer_email 'yewton@gmail.com'
license          'Apache 2.0'
description      'Installs/Configures yewton-emacs'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.1.0'

supports 'debian', '~> 7'

depends 'ark', '~> 0.9.0'
depends 'build-essential', '~> 2.1.3'

