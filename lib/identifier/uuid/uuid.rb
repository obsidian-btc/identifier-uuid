module Identifier
  module UUID
    MATCHER = %r{
      [a-f0-9]{8}          # abcdef01
      -                    #         -
      [a-f0-9]{4}          #          abcd
      -                    #              -
      4[a-f0-9]{3}         #               4abc
      -                    #                   -
      [89aAbB][a-f0-9]{3}  #                    8abc
      -                    #                        -
      [a-f0-9]{12}         #                         abcdef012345
    }xi

    def self.format(uuid)
      uuid.to_s
    end

    def self.random
      Random.get
    end

    def self.zero
      '00000000-0000-0000-0000-000000000000'
    end
  end
end
