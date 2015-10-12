require_relative 'spec_init'

describe UUID::Random do
  context "Getting a UUID" do
    let(:uuid) { UUID::Random.get }
    specify "UUIDs are strings" do
      assert(uuid.is_a? String)
    end
  end
end
