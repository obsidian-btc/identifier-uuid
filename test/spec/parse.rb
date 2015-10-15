require_relative 'spec_init'

describe 'Parsing text to find a valid UUID' do
  context 'Text contains a valid UUID' do
    specify 'Returns the UUID' do
      identifier = Identifier::UUID::Controls::Random.example
      text = "someStream-#{identifier}"
      parsed_uuid = Identifier::UUID.parse(text)

      assert(parsed_uuid == identifier)
    end
  end

  context 'Text contains a invalid UUID' do
    specify 'Returns nil' do
      identifier = Identifier::UUID::Controls::Invalid.example
      text = "someStream-#{identifier}"
      parsed_uuid = Identifier::UUID.parse(text)

      assert_nil(parsed_uuid)
    end
  end

  context 'Text does not contain a UUID' do
    specify 'Returns nil' do
      identifier = '12345678'
      text = "someStream-#{identifier}"
      parsed_uuid = Identifier::UUID.parse(text)

      assert_nil(parsed_uuid)
    end
  end
end
