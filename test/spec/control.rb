require_relative 'spec_init'

describe "Controls" do
  describe "Incrementing" do
    specify "Is UUIDv4" do
      uuid = Identifier::UUID::Controls::Incrementing.example
      assert Identifier::UUID.uuid?(uuid)
    end
  end
end
