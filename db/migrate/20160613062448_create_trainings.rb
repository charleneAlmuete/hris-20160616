class CreateTrainings < ActiveRecord::Migration
  def change
    create_table :trainings do |t|
      t.references :employee, index: true
      t.string :name
      t.date :started
      t.date :ended
      t.string :institution
      t.string :venue
      t.string :speaker
      t.text :remarks

    end
  end
end
