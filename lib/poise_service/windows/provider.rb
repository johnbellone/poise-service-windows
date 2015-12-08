#
# Cookbook: poise-service-windows
# License: Apache 2.0
#
# Copyright 2015, Noah Kantrowitz
# Copyright 2015, Bloomberg Finance L.P.
#

require 'chef/mash'

require 'poise_service/error'
require 'poise_service/service_providers/base'

module PoiseService
  module ServiceProviders
    # Poise-service provider for Windows.
    # @since 1.0.0
    class Provider < Base
      provides(:windows_service, os: 'windows')

      def self.provides_auto?(node, _)
        node['platform_family'] == 'windows'
      end

      def pid
      end

      private

      def service_provider
        super.tap do |r|
          r.provider(Chef::Provider::Service::Windows)
        end
      end
    end
  end
end
