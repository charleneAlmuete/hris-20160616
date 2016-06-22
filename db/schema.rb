# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20160621062312) do

  create_table "awards", force: true do |t|
    t.integer "employee_id"
    t.string  "name"
    t.string  "institution"
    t.date    "dateGiven"
  end

  add_index "awards", ["employee_id"], name: "index_awards_on_employee_id", using: :btree

  create_table "branchcoms", force: true do |t|
    t.integer "company_id"
    t.integer "branchset_id"
    t.string  "address"
  end

  add_index "branchcoms", ["branchset_id"], name: "index_branchcoms_on_branch_id", using: :btree
  add_index "branchcoms", ["company_id"], name: "index_branchcoms_on_company_id", using: :btree

  create_table "branchsets", force: true do |t|
    t.text "name"
    t.text "code"
  end

  create_table "children", force: true do |t|
    t.integer "employee_id"
    t.string  "fName"
    t.string  "lName"
    t.string  "gender"
    t.date    "dateBirth"
    t.string  "civilStatus"
    t.text    "occupation"
    t.text    "company"
  end

  add_index "children", ["employee_id"], name: "index_children_on_employee_id", using: :btree

  create_table "companies", force: true do |t|
    t.text   "name"
    t.text   "code"
    t.string "contactno"
    t.string "email"
    t.string "website"
  end

  create_table "educations", force: true do |t|
    t.integer "employee_id"
    t.string  "levelType"
    t.text    "course"
    t.text    "school"
    t.integer "yearGrad"
  end

  add_index "educations", ["employee_id"], name: "index_educations_on_employee_id", using: :btree

  create_table "employees", force: true do |t|
    t.binary "image"
    t.string "fName"
    t.string "lName"
    t.text   "placeBirth"
    t.date   "dateBirth"
    t.string "gender"
    t.string "civilStatus"
    t.string "citizenship"
    t.string "religion"
    t.string "language"
    t.string "height"
    t.string "weight"
    t.string "bloodType"
    t.string "hair"
    t.text   "complexion"
    t.text   "resAdd"
    t.text   "resCity"
    t.string "resTel"
    t.string "resMobile1"
    t.string "resMobile2"
    t.string "resEmail"
    t.text   "perAdd"
    t.text   "perCity"
    t.string "perTel"
    t.string "perMobile1"
    t.string "perMobile2"
    t.string "perEmail"
    t.text   "proAdd"
    t.text   "proCity"
    t.string "proTel"
    t.string "proMobile1"
    t.string "proMobile2"
    t.string "proEmail"
    t.string "fatherName"
    t.text   "faAdd"
    t.text   "faOccupation"
    t.text   "faCompany"
    t.string "faNo"
    t.string "motherName"
    t.text   "moAdd"
    t.text   "moOccupation"
    t.text   "moCompany"
    t.string "moNo"
    t.string "spouseName"
    t.text   "spAdd"
    t.text   "spOccupation"
    t.text   "spCompany"
    t.string "spNo"
  end

  create_table "jobs", force: true do |t|
    t.string  "jobTitle"
    t.integer "branchcom_id"
    t.string  "empStatus"
    t.string  "reportTo"
    t.integer "salary_grade_id"
    t.string  "selection"
    t.text    "dutiesRes"
    t.string  "qualification"
    t.text    "prefSkills"
  end

  add_index "jobs", ["branchcom_id"], name: "index_jobs_on_branchcom_id", using: :btree
  add_index "jobs", ["salary_grade_id"], name: "index_jobs_on_salary_grade_id", using: :btree

  create_table "licensures", force: true do |t|
    t.integer "employee_id"
    t.string  "name"
    t.decimal "rating",      precision: 10, scale: 0
    t.integer "licenseNo"
    t.binary  "image"
  end

  add_index "licensures", ["employee_id"], name: "index_licensures_on_employee_id", using: :btree

  create_table "medicals", force: true do |t|
    t.integer "employee_id"
    t.string  "condition"
    t.integer "started"
    t.string  "physician"
  end

  add_index "medicals", ["employee_id"], name: "index_medicals_on_employee_id", using: :btree

  create_table "organizations", force: true do |t|
    t.integer "employee_id"
    t.string  "institution"
    t.string  "title"
    t.date    "started"
    t.date    "ended"
  end

  add_index "organizations", ["employee_id"], name: "index_organizations_on_employee_id", using: :btree

  create_table "salary_grades", force: true do |t|
    t.integer "grade"
    t.integer "started"
    t.integer "ended"
  end

  create_table "skills", force: true do |t|
    t.integer "employee_id"
    t.string  "type"
    t.string  "name"
    t.string  "level"
  end

  add_index "skills", ["employee_id"], name: "index_skills_on_employee_id", using: :btree

  create_table "trainings", force: true do |t|
    t.integer "employee_id"
    t.string  "name"
    t.date    "started"
    t.date    "ended"
    t.string  "institution"
    t.string  "venue"
    t.string  "speaker"
    t.text    "remarks"
  end

  add_index "trainings", ["employee_id"], name: "index_trainings_on_employee_id", using: :btree

  create_table "works", force: true do |t|
    t.integer "employee_id"
    t.text    "position"
    t.text    "company"
    t.date    "durFrom"
    t.date    "durTo"
    t.text    "status"
    t.decimal "salary",      precision: 10, scale: 0
    t.text    "reason"
  end

  add_index "works", ["employee_id"], name: "index_works_on_employee_id", using: :btree

end
