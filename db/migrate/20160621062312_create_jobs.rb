class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.string :jobTitle
      t.references :branchcom, index: true
      t.string :empStatus
      t.string :reportTo
      t.references :salary_grade, index: true
      t.string :selection
      t.text :dutiesRes
      t.string :qualification
      t.text :prefSkills

    end
  end
end
