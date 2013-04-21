require 'spec_helper'

describe Git::CurrentBranch::Local do
  let(:local) { described_class.new(path: File.dirname(__FILE__) + '/fixtures/testrepo.git/') }
  let(:branch_name) { 'master' }
  let(:same) { branch_name }
  let(:not_same) { 'not_same' }

  it { expect(local.name).to eq(branch_name) }
  it { expect(local.name?(same)).to be_true }
  it { expect(local.name?(not_same)).to be_false }
end
