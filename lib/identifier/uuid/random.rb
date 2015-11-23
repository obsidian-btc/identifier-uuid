module Identifier
  module UUID
    class Random
      def get
        self.class.get
      end

      def self.get
        UUID.format(raw)
      end

      def self.raw
        SecureRandom.uuid
      end

      def self.configure(receiver, attr_name=nil)
        instance = new

        if attr_name.nil?
          if receiver.respond_to?(:identifier)
            attr_name = :identifier
          else
            attr_name = :uuid
          end
        end

        receiver.send "#{attr_name}=", instance

        instance
      end

      module Substitute
        NullUUID = Naught.build do |config|
          config.mimic UUID::Random

          def set(val)
            define_singleton_method(:get) do
              val
            end
          end
        end

        def self.build
          NullUUID.new
        end
      end
    end
  end
end
