require_relative 'spec_init'

describe 'Validating a given UUID' do
  context 'A valid UUID is passed in' do
    specify 'Returns true' do
      identifier = Identifier::UUID::Controls::Random.example
      validated = Identifier::UUID.uuid?(identifier)

      assert(validated == true)
    end
  end

  context 'An invalid UUID is passed in' do
    specify 'Returns false' do
      identifier = Identifier::UUID::Controls::Invalid.example
      validated = Identifier::UUID.uuid?(identifier)

      assert(validated == false)
    end
  end

  context 'No UUID is passed in' do
    specify 'Returns false' do
      identifier = '12345678'
      validated = Identifier::UUID.uuid?(identifier)

      assert(validated == false)
    end
  end
end
