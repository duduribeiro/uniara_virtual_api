require_relative 'lib/application'
require 'newrelic_rpm'
#NewRelic::Agent.after_fork(force_reconnect: true)

$stdout.sync = true

run Routes
