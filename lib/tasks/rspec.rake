require 'rspec/core/rake_task'
require_relative '../rspec_rerun'

namespace :spec do
  desc "Rerun previously failed specs"
  RSpec::Core::RakeTask.new("rerun") do |t|
    if File.exists?('.rspec-rerun')
      failed_specs = File.open(".rspec-rerun") { |f| f.read }.split(" ")
      t.pattern = failed_specs
    end
    t.rspec_opts = %W[--format RspecRerun::Formatter]
  end
end

