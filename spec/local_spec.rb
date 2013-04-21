require 'spec_helper'

describe Git::CurrentBranch::Local do
  let(:local) { described_class.new(path: File.dirname(__FILE__) + '/fixtures/testrepo.git/') }
  let(:branch_name) { 'master' }
  let(:same) { branch_name }
  let(:not_same) { 'not_same' }

  it "" do
    expect(local.name).to eq(branch_name)
  end

  it '#name? same' do
    expect(local.name?(same)).to be_true
  end
  it '#name? not same' do
    expect(local.name?(not_same)).to be_false
  end
end
