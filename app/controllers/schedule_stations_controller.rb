class ScheduleStationsController < ApplicationController
  before_action :set_schedule_station, only: %i[ show edit update destroy]

  # GET /schedule_stations or /schedule_stations.json
  def index
    @schedule_stations = ScheduleStation.all
  end

  # GET /schedule_stations/1 or /schedule_stations/1.json
  def show
  end

  # GET /schedule_stations/new
  def new
    @schedule_station = ScheduleStation.new
  end

  # GET /schedule_stations/1/edit
  def edit

  end

  def create
    @schedule_station = ScheduleStation.new(schedule_station_params)
    respond_to do |format|
      if @schedule_station.save
        format.html { redirect_to @schedule_station, notice: "Schedule station was added"}
        format.json { render :show, status: :created, location: @schedule_station}
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @schedule_station.errors, status: :unprocessable_entity}
      end
    end
  end

  #PATCH/PUT /schedule_stations/1
  def update
    respond_to do |format|
      if @schedule_station.update(schedule_station_params)
        format.html { redirect_to @schedule_station, notice: "Schedule station info was updated"}
        format.json { render :index, status: :ok, location: @schedule_station}
      else
        format.html { render :edit, status: :unprocessable_entity}
        format.json { render json: @schedule_station.errors, status: :unprocessable_entity}
      end
    end
  end

  # DELETE /schedule_station/1
  def destroy
    @schedule_station.destroy
    respond_to do |format|
      format.html { redirect_to schedule_stations_url, notice: "Schedule station was deleted"}
      format.json { head :no_content }
    end
  end

  private

  def set_schedule_station
      @schedule_station = ScheduleStation.find(params[:id])
  end

  def schedule_station_params
    params.require(:schedule_station).permit(:station_id,:arrival,:departure)
  end

end
