require_relative 'test_init'

puts Identifier::UUID::Random.get
puts Identifier::UUID::Random.new.get
