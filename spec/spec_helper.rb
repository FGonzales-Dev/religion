$: << File.expand_path("../../lib", __FILE__)
require "religion"

RSpec::Matchers.define :have_constant do |const|
  match do |owner|
    owner.const_defined?(const)
  end
end
