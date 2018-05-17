class Util
  @@colors = {'red'=>"196",'black'=>"000",'blue'=>"021",'white'=>"231"}
  def self.color (str,colo)
    "\e[38;5;#{@@colors[colo]}m"+str
  end
end
