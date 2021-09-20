require 'rails_helper'

RSpec.describe "ScheduleStations", type: :request do
  describe "GET /index" do
    it "returns http success" do
      get "/schedule_stations/index"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /show" do
    it "returns http success" do
      get "/schedule_stations/show"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /new" do
    it "returns http success" do
      get "/schedule_stations/new"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /edit" do
    it "returns http success" do
      get "/schedule_stations/edit"
      expect(response).to have_http_status(:success)
    end
  end

end
