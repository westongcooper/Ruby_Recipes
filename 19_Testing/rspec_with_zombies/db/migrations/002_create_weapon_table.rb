require_relative '../../environment'

class CreateWeaponsTable < ActiveRecord::Migration

  def up
    create_table :weapons do |t|
      t.string :name
      t.integer :base_damage, default: 1
      t.integer :max_damage, default: 5
      t.boolean :swingable, default: false
      t.boolean :shootable, default: false
    end
    Weapon.create(name:'hands')
    Weapon.create(name:'teeth', base_damage: 10, max_damage: 30)
    puts 'ran up method'
  end
  def down
    drop_table :weapons
    puts 'ran down method'
  end
end

CreateWeaponsTable.migrate(ARGV[0])