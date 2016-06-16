class CreateOrganizations < ActiveRecord::Migration
  def change
    create_table :organizations do |t|
      t.references :employee, index: true
      t.string :institution
      t.string :title
      t.date :started
      t.date :ended

    end
  end
end
