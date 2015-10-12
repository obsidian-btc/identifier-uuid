require_relative 'spec_init'

describe Identifier::UUID::Random do
  context "Getting a UUID" do
    let(:uuid) { Identifier::UUID::Random.get }
    specify "UUIDs are strings" do
      assert(uuid.is_a? String)
    end
  end
end
