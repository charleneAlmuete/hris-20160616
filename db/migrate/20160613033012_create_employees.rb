class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.binary :image
      t.string :fName
      t.string :lName
      t.text :placeBirth
      t.date :dateBirth
      t.string :gender
      t.string :civilStatus
      t.string :citizenship
      t.string :religion
      t.string :language
      t.string :height
      t.string :weight
      t.string :bloodType
      t.string :hair
      t.text :complexion
      t.text :resAdd
      t.text :resCity
      t.string :resTel
      t.string :resMobile1
      t.string :resMobile2
      t.string :resEmail
      t.text :perAdd
      t.text :perCity
      t.string :perTel
      t.string :perMobile1
      t.string :perMobile2
      t.string :perEmail
      t.text :proAdd
      t.text :proCity
      t.string :proTel
      t.string :proMobile1
      t.string :proMobile2
      t.string :proEmail
      t.string :fatherName
      t.text :faAdd
      t.text :faOccupation
      t.text :faCompany
      t.string :faNo
      t.string :motherName
      t.text :moAdd
      t.text :moOccupation
      t.text :moCompany
      t.string :moNo
      t.string :spouseName
      t.text :spAdd
      t.text :spOccupation
      t.text :spCompany
      t.string :spNo

    end
  end
end
