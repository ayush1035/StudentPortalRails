class ChangeColNameInstudent < ActiveRecord::Migration
  def change
	rename_column :students, :country, :country_id
  end
end
