module Identifier
  module UUID
    module Controls
      module Incrementing
        def self.example(i=nil, sample: nil)
          i ||= 1
          sample ||= false

          first_octet = (i).to_s.rjust(8, '0')

          third_prefixes = ['8', '9', 'a', 'b']

          if sample
            third_prefix = third_prefixes.sample
          else
            third_prefix = third_prefixes[0]
          end

          "#{first_octet}-0000-4000-#{third_prefix}000-000000000000"
        end
      end
    end
  end
end
