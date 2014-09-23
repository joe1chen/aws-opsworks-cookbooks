###
# Do not use this file to override the rainbows cookbook's default
# attributes.  Instead, please use the customize.rb attributes file,
# which will keep your adjustments separate from the AWS OpsWorks
# codebase and make it easier to upgrade.
#
# However, you should not edit customize.rb directly. Instead, create
# "rainbows/attributes/customize.rb" in your cookbook repository and
# put the overrides in YOUR customize.rb file.
#
# Do NOT create an 'rainbows/attributes/default.rb' in your cookbooks. Doing so
# would completely override this file and might cause upgrade issues.
#
# See also: http://docs.aws.amazon.com/opsworks/latest/userguide/customizing.html
###

include_attribute 'rails::rails'

# Common Unicorn/Rainbows settings
default[:rainbows][:worker_processes] = node[:rails][:max_pool_size] ? node[:rails][:max_pool_size] : 4
default[:rainbows][:backlog] = 1024
default[:rainbows][:timeout] = 60
default[:rainbows][:preload_app] = true
default[:rainbows][:version] = '4.6.2'
default[:rainbows][:tcp_nodelay] = true
default[:rainbows][:tcp_nopush] = false
default[:rainbows][:tries] = 5
default[:rainbows][:delay] = 0.5
default[:rainbows][:accept_filter] = "httpready"

# Rainbows-specific settings
default[:rainbows][:worker_connections] = 50
default[:rainbows][:use] = 'Base' # Concurrency model. Default is no concurrency.
default[:rainbows][:keepalive_timeout] = 5
default[:rainbows][:keepalive_requests] = 100

include_attribute "rainbows::customize"
