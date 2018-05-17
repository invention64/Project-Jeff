require_relative 'renderer'
class Entity < WorldObject
  def initialize (name,symbol,pos,color='white')
    super name,symbol,pos,color
  end
end
