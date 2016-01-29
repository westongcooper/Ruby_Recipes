class Zombie < ActiveRecord::Base
  validates :name, presence: true

  DEFAULTS = {name: "",
              brains: 0,
              alive: false,
              rotting: true,
              height: 5,
              hungry: true,
              weapons: ["hands", "teeth"],
              veggie: false}

  DEFAULTS.each { |k,v| attr_accessor k }

  def initialize(args={})
    super
    DEFAULTS.merge(args).each { |k,v| instance_variable_set("@#{k}",v) }
  end

  def hungry?
    @hungry
  end

  def vegan?
    @veggie
  end

end