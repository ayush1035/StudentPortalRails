class CreateStates < ActiveRecord::Migration
  def change
    create_table :states do |t|
    	t.integer :country_id
    	t.string  :name, null:false
      t.timestamps null: false
    end
    add_index :states, :country_id
  end
end
