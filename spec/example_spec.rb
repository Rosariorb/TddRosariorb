require_relative '../katas/example'
require 'rspec'

describe Example do
  it { Example.working?.should be_true }
end
