require 'rspec/core/formatters/progress_formatter'

module RspecRerun
  class Formatter < RSpec::Core::Formatters::ProgressFormatter
    def dump_commands_to_rerun_failed_examples
      super

      File.open('.rspec-rerun', 'w') do |f|
        failed_examples.each do |example|
          f.write "#{RSpec::Core::Metadata::relative_path(example.location)} "
        end
      end
    end
  end
end

