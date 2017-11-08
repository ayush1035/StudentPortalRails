class ChangeConstraintsFromStudents < ActiveRecord::Migration
  def change

    change_column :students, :name, :string ,:null => false
    change_column :students, :dob, :date,:null => false
    change_column :students, :email,:string, :null => false,:unique=>true
    change_column :students, :phone, :integer,:null => false,:unique=>true
    change_column :students, :country,:string, :null => false
    change_column :students, :state,:string, :null => false
    change_column :students, :city,:string, :null => false
    change_column :students, :course,:string, :null => false
  end
end
