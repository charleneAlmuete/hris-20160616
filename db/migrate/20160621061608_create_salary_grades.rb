class CreateSalaryGrades < ActiveRecord::Migration
  def change
    create_table :salary_grades do |t|
      t.integer :grade
      t.integer :started
      t.integer :ended

    end
  end
end
