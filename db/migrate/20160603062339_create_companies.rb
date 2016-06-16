class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.text :code
      t.text :name
      t.string :contactno
      t.string :email
      t.string :website
  	end
  end
end
