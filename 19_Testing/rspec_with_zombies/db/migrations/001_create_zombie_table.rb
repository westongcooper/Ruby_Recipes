require_relative '../../environment'

class CreateZombiesTable < ActiveRecord::Migration

  def up
    create_table :zombies do |t|
      t.integer :zombie_id
      t.string :name
    end
    puts 'ran up method'
  end
  def down
    drop_table :zombies
    puts 'ran down method'
  end
end

CreateZombiesTable.migrate(ARGV[0])