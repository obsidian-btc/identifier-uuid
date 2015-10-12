require_relative 'spec_init'

describe UUID::Random do
  context "Class interface" do
    specify "Random UUID" do
      UUID::Random.get
    end
  end

  context "Instance interface" do
    specify "Random UUID" do
      UUID::Random.new.get
    end
  end

  context "Root interface" do
    specify "Random UUID" do
      UUID.random
    end
  end
end
