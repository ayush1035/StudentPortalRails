class AddIndextoStudents < ActiveRecord::Migration
  def change
  	add_column :students, :email, :string
    add_index :students, :email, unique: true
  end
end
