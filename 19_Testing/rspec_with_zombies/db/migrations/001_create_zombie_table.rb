require_relative '../../environment'

class CreateZombiesTable < ActiveRecord::Migration
  def up
    create_table :zombies do |t|
      t.string :name
      t.integer :brains, default: 0
      t.boolean :rotting, default: true
      t.integer :height, default: 5
      t.boolean :hungry, default: true
      t.boolean :vegan, default: false
      t.boolean :alive, default: false
    end
    puts 'ran up method'
  end
  def down
    drop_table :zombies
    puts 'ran down method'
  end
end

CreateZombiesTable.migrate(ARGV[0])