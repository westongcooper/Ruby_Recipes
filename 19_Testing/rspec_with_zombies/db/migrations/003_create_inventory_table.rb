require_relative '../../environment'
class CreateItemsTable < ActiveRecord::Migration

  def up
    create_table :items do |t|
      t.belongs_to :weapon, index: true
      t.belongs_to :zombie, index: true
      t.string :name
      t.timestamps null: false
    end
    puts 'ran up method'
  end
  def down
    drop_table :items
    puts 'ran down method'
  end
end

CreateItemsTable.migrate(ARGV[0])