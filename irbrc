# load rubygems and wirble
require 'rubygems' rescue nil
require 'utility_belt'
require 'wirble'

COLORS = {
   # delimiter colors
   :comma              => :gray,
   :refers             => :gray,

   # container colors (hash and array)
   :open_hash          => :white,
   :close_hash         => :white,
   :open_array         => :white,
   :close_array        => :white,

   # object colors
   :open_object        => :white,
   :object_class       => :brown,
   :object_addr_prefix => :white,
   :object_line_prefix => :white,
   :close_object       => :white,

   # symbol colors
   :symbol             => :cyan,
   :symbol_prefix      => :cyan,

   # string colors
   :open_string        => :green,
   :string             => :green,
   :close_string       => :green,

   # misc colors
   :number             => :yellow,
   :keyword            => :yellow,
   :class              => :yellow,
   :range              => :yellow,
   :unknown            => :gray
}

Wirble::Colorize::colors = COLORS

# load wirble
Wirble.init

