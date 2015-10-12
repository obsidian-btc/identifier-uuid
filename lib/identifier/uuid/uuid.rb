module Identifier
  module UUID
    def self.format(uuid)
      uuid.to_s
    end

    def self.random
      Random.get
    end

    def self.uuid?(text)
      uuid = get(text).to_s
      uuid == text
    end

    def self.get(text)
      uuid = stream_name.match(pattern).to_s
      uuid = nil if uuid == ''
      uuid
    end

    def self.pattern
      /[a-f0-9]{8}-[a-f0-9]{4}-4[a-f0-9]{3}-[89aAbB][a-f0-9]{3}-[a-f0-9]{12}/i
    end

    def self.zero
      '00000000-0000-0000-0000-000000000000'
    end
  end
end
