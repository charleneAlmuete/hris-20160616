class CreateBranchcoms < ActiveRecord::Migration
  def change
    create_table :branchcoms do |t|
      t.references :company, index: true
      t.references :branch, index: true
      t.string :address
    end
  end
end
