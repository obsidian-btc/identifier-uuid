module Identifier
  module UUID
    module Controls
      module Incrementing
        def self.example(i=nil, sample: nil)
          i ||= 1
          sample ||= false

          first_octet = (i).to_s.rjust(8, '0')

          fourth_prefixes = ['8', '9', 'a', 'b']

          if sample
            fourth_prefix = fourth_prefixes.sample
          else
            fourth_prefix = fourth_prefixes[0]
          end

          "#{first_octet}-0000-4000-#{fourth_prefix}000-000000000000"
        end
      end
    end
  end
end
