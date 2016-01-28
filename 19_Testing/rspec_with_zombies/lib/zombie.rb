class Zombie
  attr_accessor :name, :brains, :alive, :rotting, :height

  def initialize(name,brains=0,alive=false,rotting=true,height=5,hungry=true)
    @name, @brains, @alive, @rotting, @height, @hungry = name, brains, alive, rotting, height, hungry
  end
end
