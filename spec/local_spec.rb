require 'spec_helper'

describe Git::CurrentBranch::Local do
  let(:local) { described_class.new(path: File.dirname(__FILE__) + '/fixtures/testrepo.git/') }
  let(:branch_name) { 'master' }
  let(:not_equal_branch_name) { 'not_equal_branch_name' }

  it { expect(local.name).to eq(branch_name) }

  it '#name_equal_to? branch_name' do
    expect(local).to be_name_equal_to(branch_name)
  end

  it '#name_equal_to? not branch_name' do
    expect(local).not_to be_name_equal_to(not_equal_branch_name)
  end
end
