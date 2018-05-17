require_relative 'entity'
require_relative 'item'
class Player < Entity
  inventory = new.Array
  def initialize (pos)
    super("player",'@',pos,"red")
  end

def operator+ (item)
  inventory.push(item)
end

end
