class CreateCities < ActiveRecord::Migration
  def change
    create_table :cities do |t|
      t.integer	:state_id
      t.integer :country_id
      t.string :name , null:false
      t.timestamps null: false
    end
    add_index :cities, :state_id 
    add_index :cities, :country_id
  end
end
