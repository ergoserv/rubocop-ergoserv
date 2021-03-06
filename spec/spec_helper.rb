require 'bundler/setup'
require 'pry'
require 'rspec/shell/expectations'
require 'rubocop/ergoserv'

RSpec.configure do |config|
  config.include Rspec::Shell::Expectations

  config.example_status_persistence_file_path = '.rspec_status'

  config.disable_monkey_patching!

  config.expect_with :rspec do |c|
    c.syntax = :expect
  end
end
