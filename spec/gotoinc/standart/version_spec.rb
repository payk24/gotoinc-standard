# frozen_string_literal: true

RSpec.describe Gotoinc::Standard::Version do
  it 'has a version number' do
    expect(Gotoinc::Standard::Version::STRING).not_to be nil
  end
end
