
LENGTH=8
class Render
  def self.display(objects)
    count=0
    world = Array.new(64){ |i| '#' }
    objects.each do |x|
      pos = (x.position[0])+((x.position[1])*LENGTH)
      world[pos] = x.to_s
    end
    world.each do |a|
      print a+" "
      count+=1
      if (count%LENGTH)==0
        puts ""
      end

    end

  end

end

class WorldObject
  @name
  @symbol
  @color
  @position
  attr_accessor :position
  def initialize(name,symbol,pos,color='white')
  @name=name
  @symbol=symbol
  @color=color
  @position=pos
  end

  def to_s
    return color(@symbol,@color)
  end

end

def color (str,colo='white')
  colors = {'red'=>"196",'black'=>"000",'blue'=>"021",'white'=>"231"}
  "\e[38;5;#{colors[colo]}m"+str+"\e[38;5;231m"
end
