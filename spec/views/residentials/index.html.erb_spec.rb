require 'rails_helper'

RSpec.describe "residentials/index", :type => :view do
  before(:each) do
    assign(:residentials, [
      Residential.create!(
        :user => nil,
        :status => 1,
        :contract => "Contract",
        :product => nil
      ),
      Residential.create!(
        :user => nil,
        :status => 1,
        :contract => "Contract",
        :product => nil
      )
    ])
  end

  it "renders a list of residentials" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Contract".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
