require_relative 'spec_init'

describe Identifier::UUID::Random::Substitute do
  context "No assigned UUID" do
    let(:uuid) { Identifier::UUID::Random::Substitute.build }

    context "UUID" do
      specify "Is nil" do
        assert_nil(uuid.get)
      end
    end
  end

  context "Assigned UUID" do
    let(:uuid) { Identifier::UUID::Random::Substitute.build }

    context "UUID" do
      specify "Is nil" do
        val = 'some uuid'
        uuid.set val

        assert(uuid.get == val)
      end
    end
  end
end
