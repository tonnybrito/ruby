require 'rails_helper'

RSpec.describe "customers/index", type: :view do
  before(:each) do
    assign(:customers, [
      Customer.create!(
        :contact_name => "Contact Name",
        :email => "Email",
        :company => "Company",
        :sector => "MyText",
        :project => "MyText",
        :project_language => "MyText",
        :project_description => "MyText",
        :calc_hours => 1,
        :project_partial_value => 2,
        :project_prevision => "MyText",
        :changed_in_project => "MyText",
        :new_calcs_project => "MyText",
        :new_values_project => 3
      ),
      Customer.create!(
        :contact_name => "Contact Name",
        :email => "Email",
        :company => "Company",
        :sector => "MyText",
        :project => "MyText",
        :project_language => "MyText",
        :project_description => "MyText",
        :calc_hours => 1,
        :project_partial_value => 2,
        :project_prevision => "MyText",
        :changed_in_project => "MyText",
        :new_calcs_project => "MyText",
        :new_values_project => 3
      )
    ])
  end

  it "renders a list of customers" do
    render
    assert_select "tr>td", :text => "Contact Name".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "Company".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
  end
end
