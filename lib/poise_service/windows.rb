#
# Cookbook: poise-service-windows
# License: Apache 2.0
#
# Copyright 2015, Noah Kantrowitz
# Copyright 2015, Bloomberg Finance L.P.
#

module PoiseService
  # A plugin for poise-service to manage Windows services.
  # @since 1.0.0
  module Windows
    autoload :Provider, 'poise_service/windows/provider'
    autoload :VERSION, 'poise_service/windows/version'
  end
end
