class Zombie < ActiveRecord::Base
  attr_accessor :brains, :alive, :rotting, :height, :hungry, :weapons, :veggie
  validates :name, presence: true

  def initialize(args={})
    super
    @name = args[:name]
    @brains = args[:brains] || 0
    @alive = !!args[:alive]
    @rotting = args[:rotting] || true
    @height = args[:height] || 5
    @hungry = args[:hungry] || true
    @weapons = args[:weapons] || ["hands", "teeth"]
    @veggie = args[:veggie] || false
  end

  def hungry?
    @hungry
  end

  def vegan?
    @veggie
  end

end