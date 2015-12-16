require 'spec_helper'

describe command('which tmux') do
  its(:stdout) { should match /tmux$/ }
  its(:exit_status) { should eq 0 }
end

describe file('/usr/bin/tmux') do
  it { should be_file }
  it { should be_executable }
  it { should be_executable.by('others') }
#  it { should be_linked_to '../Cellar/tmux/1.9a/bin/tmux' } ## only on OSX with homebrew...
  it { should be_owned_by 'root' }
  it { should be_grouped_into 'root' }
end

describe file('/home/kitchen/.tmux.conf') do
  it { should be_file }
  its(:content) { should match /^set -g default-terminal "xterm-256color"$/ }
end
