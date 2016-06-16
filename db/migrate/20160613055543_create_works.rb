class CreateWorks < ActiveRecord::Migration
  def change
    create_table :works do |t|
      t.references :employee, index: true
      t.text :position
      t.text :company
      t.date :durFrom
      t.date :durTo
      t.text :status
      t.decimal :salary
      t.text :reason

    end
  end
end
