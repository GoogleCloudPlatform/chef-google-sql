# Copyright 2018 Google Inc.
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

# ----------------------------------------------------------------------------
#
#     ***     AUTO GENERATED CODE    ***    AUTO GENERATED CODE     ***
#
# ----------------------------------------------------------------------------
#
#     This file is automatically generated by Magic Modules and manual
#     changes will be clobbered when the file is regenerated.
#
#     Please read more about how to change this file in README.md and
#     CONTRIBUTING.md located at the root of this package.
#
# ----------------------------------------------------------------------------

module Google
  module Sql
    module Data
      # A class to manage data for MysqlReplicaConfiguration for instance.
      class InstanceMysqlReplicaConfiguration
        include Comparable

        attr_reader :ca_certificate
        attr_reader :client_certificate
        attr_reader :client_key
        attr_reader :connect_retry_interval
        attr_reader :dump_file_path
        attr_reader :master_heartbeat_period
        attr_reader :password
        attr_reader :ssl_cipher
        attr_reader :username
        attr_reader :verify_server_certificate

        def to_json(_arg = nil)
          {
            'caCertificate' => ca_certificate,
            'clientCertificate' => client_certificate,
            'clientKey' => client_key,
            'connectRetryInterval' => connect_retry_interval,
            'dumpFilePath' => dump_file_path,
            'masterHeartbeatPeriod' => master_heartbeat_period,
            'password' => password,
            'sslCipher' => ssl_cipher,
            'username' => username,
            'verifyServerCertificate' => verify_server_certificate
          }.reject { |_k, v| v.nil? }.to_json
        end

        def to_s
          {
            ca_certificate: ca_certificate.to_s,
            client_certificate: client_certificate.to_s,
            client_key: client_key.to_s,
            connect_retry_interval: connect_retry_interval.to_s,
            dump_file_path: dump_file_path.to_s,
            master_heartbeat_period: master_heartbeat_period.to_s,
            password: password.to_s,
            ssl_cipher: ssl_cipher.to_s,
            username: username.to_s,
            verify_server_certificate: verify_server_certificate.to_s
          }.map { |k, v| "#{k}: #{v}" }.join(', ')
        end

        def ==(other)
          return false unless other.is_a? InstanceMysqlReplicaConfiguration
          compare_fields(other).each do |compare|
            next if compare[:self].nil? || compare[:other].nil?
            return false if compare[:self] != compare[:other]
          end
          true
        end

        def <=>(other)
          return false unless other.is_a? InstanceMysqlReplicaConfiguration
          compare_fields(other).each do |compare|
            next if compare[:self].nil? || compare[:other].nil?
            result = compare[:self] <=> compare[:other]
            return result unless result.zero?
          end
          0
        end

        def inspect
          to_json
        end

        private

        # rubocop:disable Metrics/MethodLength
        def compare_fields(other)
          [
            { self: ca_certificate, other: other.ca_certificate },
            { self: client_certificate, other: other.client_certificate },
            { self: client_key, other: other.client_key },
            { self: connect_retry_interval, other: other.connect_retry_interval },
            { self: dump_file_path, other: other.dump_file_path },
            { self: master_heartbeat_period, other: other.master_heartbeat_period },
            { self: password, other: other.password },
            { self: ssl_cipher, other: other.ssl_cipher },
            { self: username, other: other.username },
            { self: verify_server_certificate, other: other.verify_server_certificate }
          ]
        end
        # rubocop:enable Metrics/MethodLength
      end

      # Manages a InstanceMysqlReplicaConfiguration nested object
      # Data is coming from the GCP API
      class InstanceMysqlReplicaConfigurationApi < InstanceMysqlReplicaConfiguration
        # rubocop:disable Metrics/MethodLength
        def initialize(args)
          @ca_certificate = Google::Sql::Property::String.api_parse(args['caCertificate'])
          @client_certificate = Google::Sql::Property::String.api_parse(args['clientCertificate'])
          @client_key = Google::Sql::Property::String.api_parse(args['clientKey'])
          @connect_retry_interval =
            Google::Sql::Property::Integer.api_parse(args['connectRetryInterval'])
          @dump_file_path = Google::Sql::Property::String.api_parse(args['dumpFilePath'])
          @master_heartbeat_period =
            Google::Sql::Property::Integer.api_parse(args['masterHeartbeatPeriod'])
          @password = Google::Sql::Property::String.api_parse(args['password'])
          @ssl_cipher = Google::Sql::Property::String.api_parse(args['sslCipher'])
          @username = Google::Sql::Property::String.api_parse(args['username'])
          @verify_server_certificate =
            Google::Sql::Property::Boolean.api_parse(args['verifyServerCertificate'])
        end
        # rubocop:enable Metrics/MethodLength
      end

      # Manages a InstanceMysqlReplicaConfiguration nested object
      # Data is coming from the Chef catalog
      class InstanceMysqlReplicaConfigurationCatalog < InstanceMysqlReplicaConfiguration
        # rubocop:disable Metrics/MethodLength
        def initialize(args)
          @ca_certificate = Google::Sql::Property::String.catalog_parse(args[:ca_certificate])
          @client_certificate =
            Google::Sql::Property::String.catalog_parse(args[:client_certificate])
          @client_key = Google::Sql::Property::String.catalog_parse(args[:client_key])
          @connect_retry_interval =
            Google::Sql::Property::Integer.catalog_parse(args[:connect_retry_interval])
          @dump_file_path = Google::Sql::Property::String.catalog_parse(args[:dump_file_path])
          @master_heartbeat_period =
            Google::Sql::Property::Integer.catalog_parse(args[:master_heartbeat_period])
          @password = Google::Sql::Property::String.catalog_parse(args[:password])
          @ssl_cipher = Google::Sql::Property::String.catalog_parse(args[:ssl_cipher])
          @username = Google::Sql::Property::String.catalog_parse(args[:username])
          @verify_server_certificate =
            Google::Sql::Property::Boolean.catalog_parse(args[:verify_server_certificate])
        end
        # rubocop:enable Metrics/MethodLength
      end
    end

    module Property
      # A class to manage input to MysqlReplicaConfiguration for instance.
      class InstanceMysqlReplicaConfiguration
        def self.coerce
          ->(x) { ::Google::Sql::Property::InstanceMysqlReplicaConfiguration.catalog_parse(x) }
        end

        # Used for parsing Chef catalog
        def self.catalog_parse(value)
          return if value.nil?
          return value if value.is_a? Data::InstanceMysqlReplicaConfiguration
          Data::InstanceMysqlReplicaConfigurationCatalog.new(value)
        end

        # Used for parsing GCP API responses
        def self.api_parse(value)
          return if value.nil?
          return value if value.is_a? Data::InstanceMysqlReplicaConfiguration
          Data::InstanceMysqlReplicaConfigurationApi.new(value)
        end
      end
    end
  end
end
