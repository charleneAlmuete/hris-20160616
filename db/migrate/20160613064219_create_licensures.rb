class CreateLicensures < ActiveRecord::Migration
  def change
    create_table :licensures do |t|
      t.references :employee, index: true
      t.string :name
      t.decimal :rating
      t.integer :licenseNo
      t.binary :image

    end
  end
end
