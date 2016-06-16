class CreateBranchsets < ActiveRecord::Migration
  def change
    create_table :branchsets do |t|
      t.text :name
      t.text :code

    end
  end
end
