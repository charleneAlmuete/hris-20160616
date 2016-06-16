class CreateEducations < ActiveRecord::Migration
  def change
    create_table :educations do |t|
      t.references :employee, index: true
      t.string :levelType
      t.text :course
      t.text :school
      t.integer :yearGrad

    end
  end
end
