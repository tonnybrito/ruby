class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :contact_name
      t.string :email
      t.string :company
      t.text :sector
      t.date :contact_date
      t.text :project
      t.text :project_language
      t.text :project_description
      t.integer :calc_hours
      t.integer :project_partial_value
      t.date :analysis_contract
      t.date :contract_conclusion
      t.text :project_prevision
      t.text :changed_in_project
      t.text :new_calcs_project
      t.date :project_prev_conclusion_new_date
      t.integer :new_values_project
      t.date :project_completion_and_delivery

      t.timestamps null: false
    end
  end
end
