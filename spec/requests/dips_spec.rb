require 'rails_helper'

RSpec.describe "Dips", type: :request do
  describe "GET /dips" do
    it "works! (now write some real specs)" do
      get dips_path
      expect(response).to have_http_status(200)
    end
  end
end
