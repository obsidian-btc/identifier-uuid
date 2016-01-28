require_relative 'spec_init'

module Configured
  module UUID
    class Example
      attr_accessor :uuid
    end
  end

  module Identifier
    class Example
      attr_accessor :identifier
    end
  end

  module Both
    class Example
      attr_accessor :uuid
      attr_accessor :identifier
    end
  end
end

context "Configured Receiver" do
  context "Receiver attribute named uuid" do
    receiver = Configured::UUID::Example.new

    Identifier::UUID::Random.configure receiver
    uuid = receiver.uuid

    test "Receiver has a random UUID generator" do
      assert(uuid.instance_of? Identifier::UUID::Random)
    end
  end

  context "Receiver attribute named identifier" do
    receiver = Configured::Identifier::Example.new

    Identifier::UUID::Random.configure receiver
    identifier = receiver.identifier

    test "Receiver has a random UUID generator" do
      assert(identifier.instance_of? Identifier::UUID::Random)
    end
  end

  context "Receiver has both uuid and identifier" do
    receiver = Configured::Both::Example.new

    Identifier::UUID::Random.configure receiver
    uuid = receiver.uuid
    identifier = receiver.identifier

    test "Precedence is given to identifier over uuid" do
      assert(identifier.instance_of? Identifier::UUID::Random)
      assert(uuid.nil?)
    end
  end
end
