class RemoveColumnsFromStudent < ActiveRecord::Migration
  def change
  	remove_column :students, :country
  	remove_column :students, :state
  	remove_column :students, :city

  end
end
