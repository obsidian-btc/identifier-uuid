require_relative 'spec_init'

context Identifier::UUID::Random::Substitute do
  context "No assigned UUID" do
    uuid = Identifier::UUID::Random::Substitute.build

    context "UUID" do
      test "Is nil" do
        assert(uuid.get.nil?)
      end
    end
  end

  context "Assigned UUID" do
    uuid = Identifier::UUID::Random::Substitute.build

    context "UUID" do
      test "Is nil" do
        val = 'some uuid'
        uuid.set val

        assert(uuid.get == val)
      end
    end
  end
end
