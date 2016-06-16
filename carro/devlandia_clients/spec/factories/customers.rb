FactoryGirl.define do
  factory :customer do
    contact_name "MyString"
    email "MyString"
    company "MyString"
    sector "MyText"
    contact_date "2016-06-16"
    project "MyText"
    project_language "MyText"
    project_description "MyText"
    calc_hours 1
    project_partial_value 1
    analysis_contract "2016-06-16"
    contract_conclusion "2016-06-16"
    project_prevision "MyText"
    changed_in_project "MyText"
    new_calcs_project "MyText"
    project_prev_conclusion_new_date "2016-06-16"
    new_values_project 1
    project_completion_and_delivery "2016-06-16"
  end
end
