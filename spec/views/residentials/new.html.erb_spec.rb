require 'rails_helper'

RSpec.describe "residentials/new", :type => :view do
  before(:each) do
    assign(:residential, Residential.new(
      :user => nil,
      :status => 1,
      :contract => "MyString",
      :product => nil
    ))
  end

  it "renders new residential form" do
    render

    assert_select "form[action=?][method=?]", residentials_path, "post" do

      assert_select "input#residential_user_id[name=?]", "residential[user_id]"

      assert_select "input#residential_status[name=?]", "residential[status]"

      assert_select "input#residential_contract[name=?]", "residential[contract]"

      assert_select "input#residential_product_id[name=?]", "residential[product_id]"
    end
  end
end
