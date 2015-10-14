module Identifier
  module UUID
    def self.format(uuid)
      uuid.to_s
    end

    def self.random
      Random.get
    end

    def self.uuid?(text)
      uuid = parse(text).to_s
      uuid == text
    end

    def self.parse(text)
      uuid = text.match(pattern).to_s
      uuid = nil if uuid == ''
      uuid
    end

    def self.pattern
      Pattern::TYPE_4
    end

    def self.zero
      '00000000-0000-0000-0000-000000000000'
    end

    module Pattern
      TYPE_4 = %r{
        [a-f0-9]{8}          # abcdef01
        -                    #         -
        [a-f0-9]{4}          #          abcd
        -                    #              -
        4[a-f0-9]{3}         #               4abc
        -                    #                   -
        [89ab][a-f0-9]{3}    #                    8abc
        -                    #                        -
        [a-f0-9]{12}         #                         abcdef012345
      }xi
    end
  end
end
