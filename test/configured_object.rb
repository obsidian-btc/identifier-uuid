require_relative 'test_init'

class Thing
  attr_accessor :uuid

  def get_uuid
    uuid.get
  end

  def self.build
    instance = new
    Identifier::UUID::Random.configure instance
    instance
  end
end

t = Thing.build
puts t.get_uuid
