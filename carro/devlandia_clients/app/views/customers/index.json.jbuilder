json.array!(@customers) do |customer|
  json.extract! customer, :id, :contact_name, :email, :company, :sector, :contact_date, :project, :project_language, :project_description, :calc_hours, :project_partial_value, :analysis_contract, :contract_conclusion, :project_prevision, :changed_in_project, :new_calcs_project, :project_prev_conclusion_new_date, :new_values_project, :project_completion_and_delivery
  json.url customer_url(customer, format: :json)
end
