require 'spec_helper'

describe Git::CurrentBranch::Local do
  it "" do
    local = described_class.new(path: File.dirname(__FILE__) + '/fixtures/testrepo.git/')
    expect(local.name).to eq('master')
  end

  it '#name? same' do
    local = described_class.new(path: File.dirname(__FILE__) + '/fixtures/testrepo.git/')
    expect(local.name?('master')).to be_true
  end
  it '#name? not same' do
    local = described_class.new(path: File.dirname(__FILE__) + '/fixtures/testrepo.git/')
    expect(local.name?('not_same')).to be_false
  end
end
