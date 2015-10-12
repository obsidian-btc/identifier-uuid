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

    def self.configure(receiver)
      instance = new
      receiver.uuid = instance
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
