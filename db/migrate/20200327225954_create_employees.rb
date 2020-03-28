class CreateEmployees < ActiveRecord::Migration[6.0]
  def change
    create_table :employees do |t|
      t.string :employee_fname
      t.string :employee_lname
      t.string :employee_email
      t.decimal :employee_salary
      t.date :employee_hiredate

      t.timestamps
    end
  end
end
