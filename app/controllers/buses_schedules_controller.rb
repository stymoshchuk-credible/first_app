class BusesSchedulesController < ApplicationController
  before_action :set_buses_schedule, only: %i[ show edit update destroy]

  # GET /buses or /buses.json
  def index
    @buses_schedules = BusesSchedule.all
  end

  # GET /buses/1 or /buses/1.json
  def show
  end

  # GET /buses/new
  def new
    @buses_schedule = BusesSchedule.new
  end

  # GET /buses/1/edit
  def edit
  end

  # def find
  #   @buses_search =  Bus.find_by_bus_name(params[:search_string])
  # end
  # POST /buses
  def create
    @buses_schedule = BusesSchedule.new(buses_schedule_params)

    respond_to do |format|
      if @buses_schedule.save
        format.html { redirect_to @buses_schedule, notice: "Bus was added"}
        format.json { render :show, status: :created, location: @buses_schedule}
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @buses_schedule.errors, status: :unprocessable_entity}
      end
    end
  end

  #PATCH/PUT /buses/1
  def update
    respond_to do |format|
      if @buses_schedule.update(buses_schedule_params)
        format.html { redirect_to @buses_schedule, notice: "Bus info was updated"}
        format.json { render :index, status: :ok, location: @buses_schedule}
      else
        format.html { render :edit, status: :unprocessable_entity}
        format.json { render json: @buses_schedule.errors, status: :unprocessable_entity}
      end
    end
  end

  # DELETE /buses/1
  def destroy
    @buses_schedule.destroy
    respond_to do |format|
      format.html { redirect_to buses_schedule_url, notice: "Bus was deleted"}
      format.json { head :no_content }
    end
  end

  private

  def set_buses_schedule
    @buses_schedule = BusesSchedule.find(params[:id])
  end

  def buses_schedule_params
    params.require(:buses_schedule).permit(:bus_id,:day,:schedule_id)
  end
end
