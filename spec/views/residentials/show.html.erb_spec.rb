require 'rails_helper'

RSpec.describe "residentials/show", :type => :view do
  before(:each) do
    @residential = assign(:residential, Residential.create!(
      :user => nil,
      :status => 1,
      :contract => "Contract",
      :product => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(/1/)
    expect(rendered).to match(/Contract/)
    expect(rendered).to match(//)
  end
end
