require 'rspec'
require 'rspec/core/formatters/base_formatter'

class RSpec::Mocks::Mock
  def inspect
    "double(#{@name.inspect})"
  end
end

class RSpecFormatter < RSpec::Core::Formatters::BaseFormatter
  def example_failed(example)
    super(example)

    filename    = example.location
    method      = example.full_description
    description = example.description
    exception   = example.execution_result[:exception].message
    backtrace   = example.execution_result[:exception].backtrace

    backtrace.reject! { |trace| trace =~ /rspec/     } # filter out calls into rspec
    backtrace.reject! { |trace| trace =~ /kernel/    } # rubinius throws these in a lot.
    backtrace.reject! { |trace| trace =~ /org.jruby/ } # jruby throws these in via 'org/jruby'

    backtrace.map! do |trace|
      trace =~ /([^:]*):(\d+):.*/
      "--> #{$1}:#{$2}"
    end

    description_bar = "#{method}#{description}"
    exception_bar   = exception

    max_length = [backtrace.map(&:length).max, exception_bar.length, description_bar.length].max

    description_bar = description_bar
    exception_bar   = exception_bar
    hash_bar        = '#' * max_length

    backtrace = backtrace.take(4).join("\n")


    print %Q{##{hash_bar}#
#{description_bar}
#{exception_bar}

#{backtrace}

##{hash_bar}#}.gsub(/^ *$/, '')


  end
end
