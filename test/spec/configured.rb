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
end

describe "Configured Receiver" do
  context "Receiver attribute named uuid" do
    let(:receiver) { Configured::UUID::Example.new }
    let(:uuid) { receiver.uuid }

    before do
      Identifier::UUID::Random.configure receiver
    end

    specify "Receiver has a random UUID generator" do
      assert(uuid.instance_of? Identifier::UUID::Random)
    end
  end

  context "Receiver attribute named identifier" do
    let(:receiver) { Configured::Identifier::Example.new }
    let(:identifier) { receiver.identifier }

    before do
      Identifier::UUID::Random.configure receiver
    end

    specify "Receiver has a random UUID generator" do
      assert(identifier.instance_of? Identifier::UUID::Random)
    end
  end
end
