class ScheduleDaysController < ApplicationController
  before_action :set_schedule_day, only: %i[ show edit update destroy]

  # GET /schedule_stations or /schedule_stations.json
  def index
    @schedule_days = ScheduleDay.all
  end

  # GET /schedule_stations/1 or /schedule_stations/1.json
  def show
  end

  # GET /schedule_stations/new
  def new
    @schedule_day = ScheduleDay.new
  end

  # GET /schedule_stations/1/edit
  def edit

  end

  def create
    @schedule_day = ScheduleDay.new(schedule_day_params)
    respond_to do |format|
      if @schedule_day.save
        format.html { redirect_to @schedule_day, notice: "Schedule day was added"}
        format.json { render :show, status: :created, location: @schedule_day}
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @schedule_day.errors, status: :unprocessable_entity}
      end
    end
  end

  #PATCH/PUT /schedule_stations/1
  def update
    respond_to do |format|
      if @schedule_day.update(schedule_day_params)
        format.html { redirect_to @schedule_day, notice: "Schedule day info was updated"}
        format.json { render :index, status: :ok, location: @schedule_day}
      else
        format.html { render :edit, status: :unprocessable_entity}
        format.json { render json: @schedule_day.errors, status: :unprocessable_entity}
      end
    end
  end

  # DELETE /schedule_station/1
  def destroy
    @schedule_day.destroy
    respond_to do |format|
      format.html { redirect_to schedule_day_url, notice: "Schedule day was deleted"}
      format.json { head :no_content }
    end
  end

  private

  def set_schedule_day
    @schedule_day = ScheduleDay.find(params[:id])
  end

  def schedule_day_params
    params.require(:schedule_day).permit(:schedule_id, :date)
  end

end
