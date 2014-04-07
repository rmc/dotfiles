require 'rubygems'

require 'pp'                          # pretty print
require 'irb/completion'              # tab completion
IRB.conf[:AUTO_INDENT]= true 
IRB.conf[:PROMPT_MODE]= :SIMPLE

begin
  require 'wirble'
  Wirble.init
rescue LoadError => err
  $stderr.puts "Couldn't load Wirble: #{err}"
end

begin 
  require 'hirb'
  Hirb::View.enable
rescue LoadError => err
  $stderr.puts "Couldn't load Hirb: #{err}"
end

begin
  require 'awesome_print'               # awesome_print

  unless IRB.version.include?('DietRB')
    IRB::Irb.class_eval do
      def output_value
        ap @context.last_value
      end
    end
  else # MacRuby
    IRB.formatter = Class.new(IRB::Formatter) do
      def inspect_object(object)
        object.ai
      end
    end.new
  end # end awesome_print config
rescue LoadError => err
  $stderr.puts "Couldn't load Awesom Print: #{err}"
end

