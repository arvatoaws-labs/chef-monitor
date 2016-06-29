include_attribute 'sensu'

override['sensu']['use_embedded_ruby'] = true
override['sensu']['version'] = '0.25.3-1'
override['uchiwa']['version'] = '0.16.0-1'

default['monitor']['redis_address'] = nil
default['monitor']['rabbitmq_address'] = nil
default['monitor']['api_address'] = nil

default['monitor']['transport'] = 'rabbitmq'

default['monitor']['master_search_query'] = 'recipes:monitor\\:\\:master'
default['monitor']['graphite_search_query'] = 'recipes:graphite\\:\\:carbon'

default['monitor']['environment_aware_search'] = false
default['monitor']['use_local_ipv4'] = false

default['monitor']['additional_client_attributes'] = Mash.new

default['monitor']['use_sensu_plugins'] = true
default['monitor']['use_nagios_plugins'] = false
default['monitor']['use_system_profile'] = false
default['monitor']['use_statsd_input'] = false

default['monitor']['sudo_commands'] = []

default['monitor']['default_handlers'] = ['debug']
default['monitor']['default_interval'] = 60
default['monitor']['default_occurrences'] = 5
default['monitor']['default_handler_timeout'] = 300
default['monitor']['standalone_mode'] = true
default['monitor']['safe_mode'] = true

default['monitor']['metric_handlers'] = ['debug']
default['monitor']['metric_interval'] = 60
default['monitor']['metric_occurrences'] = 2
default['monitor']['metric_disabled'] = false

default['monitor']['client_extension_dir'] = '/etc/sensu/extensions/client'
default['monitor']['server_extension_dir'] = '/etc/sensu/extensions/server'

default['monitor']['snsqs_max_number_of_messages'] = 10
default['monitor']['snsqs_wait_time_seconds'] = 2
default['monitor']['snsqs_region'] = nil
default['monitor']['snsqs_consuming_sqs_queue_url'] = nil
default['monitor']['snsqs_publishing_sns_topic_arn'] = nil

# grpahite scheme
default['monitor']['scheme_prefix'] = 'sensu.default.'
# remedy defaults deprecated
default['monitor']['remedy_app'] = nil
default['monitor']['remedy_group'] = nil
default['monitor']['remedy_component'] = nil

# build-essential
normal['build-essential']['compile_time'] = true
