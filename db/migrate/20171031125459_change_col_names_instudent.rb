class ChangeColNamesInstudent < ActiveRecord::Migration
  def change
  	rename_column :students, :state, :state_id
	rename_column :students, :city, :city_id
  end
end
