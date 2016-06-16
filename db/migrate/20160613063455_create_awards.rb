class CreateAwards < ActiveRecord::Migration
  def change
    create_table :awards do |t|
      t.references :employee, index: true
      t.string :name
      t.string :institution
      t.date :dateGiven

    end
  end
end
