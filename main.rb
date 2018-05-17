#! usr/bin/ruby
require_relative 'renderer'
require_relative 'player'

=begin
Style Guide:
File names begin with a lowercase letter and are formatted like_this
Class defs begin with a capitol letter
Method names are in a style like_this
Variables are either camelCase or this_style but always lowercase
Constants are all capitol, always
=end

world=Array.new
p = Player.new Array.new(3,3)
world.push(p)
(0..4).each do |x|
Render.display(world)
puts
p.position = [3,x]
end
