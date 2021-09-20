require 'rails_helper'

RSpec.describe "BusesSchedules", type: :request do
  describe "GET /index" do
    it "returns http success" do
      get "/buses_schedules/index"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /show" do
    it "returns http success" do
      get "/buses_schedules/show"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /new" do
    it "returns http success" do
      get "/buses_schedules/new"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /edit" do
    it "returns http success" do
      get "/buses_schedules/edit"
      expect(response).to have_http_status(:success)
    end
  end

end
