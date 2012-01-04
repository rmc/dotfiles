# nicer erb prompt
IRB.conf[:PROMPT_MODE] = :SIMPLE
# load rubygems
require 'rubygems' rescue nil
require 'irb/completion'
require 'awesome_print'
#require 'looksee/shortcuts'
#require 'wirble'
#require 'hirb'
#require 'utility_belt'

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

# COLORS = {
#   # delimiter colors
#   :comma              => :gray,
#   :refers             => :gray,
# 
#   # container colors (hash and array)
#   :open_hash          => :white,
#   :close_hash         => :white,
#   :open_array         => :white,
#   :close_array        => :white,
# 
#   # object colors
#   :open_object        => :white,
#   :object_class       => :brown,
#   :object_addr_prefix => :white,
#   :object_line_prefix => :white,
#   :close_object       => :white,
# 
#   # symbol colors
#   :symbol             => :cyan,
#   :symbol_prefix      => :cyan,
# 
#   # string colors
#   :open_string        => :green,
#   :string             => :green,
#   :close_string       => :green,
# 
#   # misc colors
#   :number             => :yellow,
#   :keyword            => :yellow,
#   :class              => :yellow,
#   :range              => :yellow,
#   :unknown            => :gray
# }
# 
# Wirble::Colorize::colors = COLORS
# Wirble.colorize
# Wirble.init
# 
# Hirb.enable
 
