require 'rails_helper'

RSpec.describe "customers/new", type: :view do
  before(:each) do
    assign(:customer, Customer.new(
      :contact_name => "MyString",
      :email => "MyString",
      :company => "MyString",
      :sector => "MyText",
      :project => "MyText",
      :project_language => "MyText",
      :project_description => "MyText",
      :calc_hours => 1,
      :project_partial_value => 1,
      :project_prevision => "MyText",
      :changed_in_project => "MyText",
      :new_calcs_project => "MyText",
      :new_values_project => 1
    ))
  end

  it "renders new customer form" do
    render

    assert_select "form[action=?][method=?]", customers_path, "post" do

      assert_select "input#customer_contact_name[name=?]", "customer[contact_name]"

      assert_select "input#customer_email[name=?]", "customer[email]"

      assert_select "input#customer_company[name=?]", "customer[company]"

      assert_select "textarea#customer_sector[name=?]", "customer[sector]"

      assert_select "textarea#customer_project[name=?]", "customer[project]"

      assert_select "textarea#customer_project_language[name=?]", "customer[project_language]"

      assert_select "textarea#customer_project_description[name=?]", "customer[project_description]"

      assert_select "input#customer_calc_hours[name=?]", "customer[calc_hours]"

      assert_select "input#customer_project_partial_value[name=?]", "customer[project_partial_value]"

      assert_select "textarea#customer_project_prevision[name=?]", "customer[project_prevision]"

      assert_select "textarea#customer_changed_in_project[name=?]", "customer[changed_in_project]"

      assert_select "textarea#customer_new_calcs_project[name=?]", "customer[new_calcs_project]"

      assert_select "input#customer_new_values_project[name=?]", "customer[new_values_project]"
    end
  end
end
