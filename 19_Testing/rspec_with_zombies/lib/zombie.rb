class Zombie < ActiveRecord::Base
  validates :name, presence: true
  has_many :items
  has_many :weapons, through: :items
  after_initialize :load_weapons
  # DEFAULTS = {name: "",
  #             brains: 0,hgg
  #             alive: false,
  #             rotting: true,
  #             height: 5,
  #             hungry: true,
  #             weapons: ["hands", "teeth"],
  #             veggie: false}

  # DEFAULTS.each { |k,v| attr_accessor k }

  # def initialize(args={})
  #   super
  #   DEFAULTS.merge(args).each { |k,v| instance_variable_set("@#{k}",v) }
  # end

  def hungry?
    self.hungry
  end

  def vegan?
    self.vegan
  end

  def swing(weapon)

  end

  def load_weapons
    self.weapons << Weapon.find(1,2)
  end
end