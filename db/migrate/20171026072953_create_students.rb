class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :name
      t.date :dob
      t.string :email
      t.integer :phone
      t.string :country
      t.string :state
      t.string :city
      t.string :course

      t.timestamps null: false
    end
  end
end
