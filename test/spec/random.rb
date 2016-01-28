require_relative 'spec_init'

context Identifier::UUID::Random do
  context "Class interface" do
    test "Random UUID" do
      Identifier::UUID::Random.get
    end
  end

  context "Instance interface" do
    test "Random UUID" do
      Identifier::UUID::Random.new.get
    end
  end

  context "Root interface" do
    test "Random UUID" do
      Identifier::UUID.random
    end
  end
end
