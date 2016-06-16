class CreateMedicals < ActiveRecord::Migration
  def change
    create_table :medicals do |t|
      t.references :employee, index: true
      t.string :condition
      t.integer :started
      t.string :physician

    end
  end
end
