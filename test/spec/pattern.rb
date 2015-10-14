require_relative './spec_init'

describe 'Matching UUID values in regular expressions' do
  regex = %r{somePrefix-(?<some_token>#{Identifier::UUID::PATTERN})}

  specify 'Matches UUID' do
    uuid = "abcdef01-abcd-4abc-8abc-abcdef012345"
    string = "somePrefix-#{uuid}"

    match = regex.match string
    captured_value = match["some_token"]

    assert captured_value == uuid
  end
end
