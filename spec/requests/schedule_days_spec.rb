require 'rails_helper'

RSpec.describe "ScheduleDays", type: :request do
  describe "GET /index" do
    it "returns http success" do
      get "/schedule_days/index"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /show" do
    it "returns http success" do
      get "/schedule_days/show"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /new" do
    it "returns http success" do
      get "/schedule_days/new"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /edit" do
    it "returns http success" do
      get "/schedule_days/edit"
      expect(response).to have_http_status(:success)
    end
  end

end
