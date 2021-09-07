class BusesController < ApplicationController
  before_action :set_bus, only: %i[ show edit update destroy]

  # GET /buses or /buses.json
  def index
    @buses = Bus.all
  end

  # GET /buses/1 or /buses/1.json
  def show
  end

  # GET /buses/new
  def new
    @bus = Bus.new
  end

  def tickets_find
    Bus.all
  end
  # GET /buses/1/edit
  def edit
  end

  # def find
  #   @buses_search =  Bus.find_by_bus_name(params[:search_string])
  # end
  # POST /buses
  def create
    @bus = Bus.new(bus_params)

    respond_to do |format|
      if @bus.save
        format.html { redirect_to @bus, notice: "Bus was added"}
        format.json { render :show, status: :created, location: @bus}
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @bus.errors, status: :unprocessable_entity}
      end
    end
  end

  #PATCH/PUT /buses/1
  def update
    respond_to do |format|
      if @bus.update(bus_params)
        format.html { redirect_to @bus, notice: "Bus info was updated"}
        format.json { render :index, status: :ok, location: @bus}
      else
        format.html { render :edit, status: :unprocessable_entity}
        format.json { render json: @bus.errors, status: :unprocessable_entity}
      end
    end
  end

  # DELETE /buses/1
  def destroy
    @bus.destroy
    respond_to do |format|
      format.html { redirect_to buses_url, notice: "Bus was deleted"}
      format.json { head :no_content }
    end
  end

  private

  def set_bus
    @bus = Bus.find(params[:id])
  end

  def bus_params
    params.require(:bus).permit(:bus_name,:number_of_seats,:ticket_price)
  end
end


