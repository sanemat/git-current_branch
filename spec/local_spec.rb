require 'spec_helper'

describe Git::CurrentBranch::Local do
  it "" do
    local = described_class.new(path: File.dirname(__FILE__) + '/fixtures/testrepo.git/')
    expect(local.name).to eq('master')
  end
end
