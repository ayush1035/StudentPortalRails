class RemoveIndexfromStudent < ActiveRecord::Migration
  def change

  	remove_index :students, :country
  end
end
