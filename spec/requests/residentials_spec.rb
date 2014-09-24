require 'rails_helper'

RSpec.describe "Residentials", :type => :request do
  describe "GET /residentials" do
    it "works! (now write some real specs)" do
      get residentials_path
      expect(response).to have_http_status(200)
    end
  end
end
