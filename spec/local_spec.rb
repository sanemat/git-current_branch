require 'spec_helper'

describe Git::CurrentBranch::Local do
  let(:local) { described_class.new(path: File.dirname(__FILE__) + '/fixtures/testrepo.git/') }
  let(:branch_name) { 'master' }
  let(:not_equal_branch_name) { 'not_equal_branch_name' }

  it { expect(local.name).to eq(branch_name) }

  it '#name? equal branch_name' do
    expect(local.name?(branch_name)).to be_true
  end

  it '#name? not equal branch_name' do
    expect(local.name?(not_equal_branch_name)).to be_false
  end
end
