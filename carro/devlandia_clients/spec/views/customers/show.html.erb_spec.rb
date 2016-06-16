require 'rails_helper'

RSpec.describe "customers/show", type: :view do
  before(:each) do
    @customer = assign(:customer, Customer.create!(
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
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Contact Name/)
    expect(rendered).to match(/Email/)
    expect(rendered).to match(/Company/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/1/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/3/)
  end
end
