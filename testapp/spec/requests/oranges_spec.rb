require 'rails_helper'

RSpec.describe "Oranges", type: :request do
  describe "GET /oranges" do
    it "works! (now write some real specs)" do
      get oranges_path
      expect(response).to have_http_status(200)
    end
  end
end
