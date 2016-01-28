require_relative 'spec_init'

context "Controls" do
  context "Incrementing" do
    test "Is UUIDv4" do
      uuid = Identifier::UUID::Controls::Incrementing.example
      assert Identifier::UUID.uuid?(uuid)
    end
  end
end
