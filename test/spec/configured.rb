require_relative 'spec_init'

module ConfiguredRandomUUID
  class Example
    attr_accessor :uuid
  end
end

describe ConfiguredRandomUUID::Example do
  context "Configured" do
    let(:subject) { ConfiguredRandomUUID::Example.new }
    let(:uuid) { subject.uuid }

    before do
      UUID::Random.configure subject
    end

    specify "Receiver has a random UUID generator" do
      assert(uuid.instance_of? UUID::Random)
    end
  end
end
