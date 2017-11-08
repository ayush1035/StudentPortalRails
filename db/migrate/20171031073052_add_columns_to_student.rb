class AddColumnsToStudent < ActiveRecord::Migration
  def change
  	add_column :students, :country, :integer
  	add_column :students, :state, :integer

  	add_column :students, :city, :integer
    add_index :students, :country
  end
end
