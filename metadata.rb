# encoding: utf-8
# frozen_string_literal: true

name 'maitred'
maintainer 'Jonathan Hartman'
maintainer_email 'jonathan.hartman@socrata.com'
license 'apache2'
description 'Installs/configures a Chef server'
long_description 'Installs/configures a Chef server'
version '0.0.1'
chef_version '>= 12.1'

source_url 'https://github.com/socrata-cookbooks/maitred'
issues_url 'https://github.com/socrata-cookbooks/maitred/issues'

depends 'chef-ingredient', '~> 0.17'
depends 'chef-client', '~> 4.3'

supports 'ubuntu'
