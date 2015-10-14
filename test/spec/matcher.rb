require_relative './spec_init'

describe 'Matching UUID values in regular expressions' do
  regex = %r{somePrefix-(?<some_token>#{Identifier::UUID::MATCHER})}

  specify 'Matches UUID' do
    uuid = "00000000-0000-4000-8000-000000000000"
    string = "somePrefix-#{uuid}"

    match = regex.match string
    captured_value = match["some_token"]

    assert captured_value == uuid
  end
end
