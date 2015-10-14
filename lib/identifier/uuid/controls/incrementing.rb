module Identifier
  module UUID
    module Controls
      module Incrementing
        def self.example(i=nil)
          i ||= 1

          first_octet = (i).to_s.rjust(8, '0')

          third_prefix = ['8', '9', 'a', 'b'].sample

          "#{first_octet}-4000-#{third_prefix}000-0000-000000000000"
        end
      end
    end
  end
end
