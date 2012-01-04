require 'rubygems'
require 'awesome_print'

require 'irb/completion'              # tab completion
require 'pp'                          # pretty print

IRB.conf[:AUTO_INDENT]= true 
IRB.conf[:PROMPT_MODE]= :SHORT

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
end
