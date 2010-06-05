class CreateAttractions < ActiveRecord::Migration
  def self.up
    create_table :attractions do |t|
      t.string :name
      t.string :town
      t.string :description
      t.string :group

      t.timestamps
    end
  end

  def self.down
    drop_table :attractions
  end
end
