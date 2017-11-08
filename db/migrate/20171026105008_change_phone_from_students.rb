class ChangePhoneFromStudents < ActiveRecord::Migration
  def change
  	    change_column :students, :phone, :integer,:null => false,:unique=>true,limit:5

  end
end
