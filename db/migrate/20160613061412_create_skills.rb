class CreateSkills < ActiveRecord::Migration
  def change
    create_table :skills do |t|
      t.references :employee, index: true
      t.string :type
      t.string :name
      t.string :level

    end
  end
end
