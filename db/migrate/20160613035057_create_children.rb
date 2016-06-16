class CreateChildren < ActiveRecord::Migration
  def change
    create_table :children do |t|
      t.references :employee, index: true
      t.string :fName
      t.string :lName
      t.string :gender
      t.date :dateBirth
      t.string :civilStatus
      t.text :occupation
      t.text :company
      
    end
  end
end
