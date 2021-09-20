class StationsController < ApplicationController
    before_action :set_station , only: %i[ show edit update destroy]
    # GET /stations or /stations.json
    def index
      @stations = Station.all
    end

    # GET /stations/1 or /stations/1.json
    def show
    end

    # GET /stations/new
    def new
      @station = Station.new
    end

    # GET /stations/1/edit
    def edit
    end

    def create
      @station = Station.new(station_params)

      respond_to do |format|
        if @station.save
          format.html { redirect_to @station, notice: "Station was added"}
          format.json { render :show, status: :created, location: @station}
        else
          format.html { render :new, status: :unprocessable_entity }
          format.json { render json: @station.errors, status: :unprocessable_entity}
        end
      end
    end

    #PATCH/PUT /stations/1
    def update
      respond_to do |format|
        if @station.update(bus_params)
          format.html { redirect_to @station, notice: "Station info was updated"}
          format.json { render :index, status: :ok, location: @station}
        else
          format.html { render :edit, status: :unprocessable_entity}
          format.json { render json: @station.errors, status: :unprocessable_entity}
        end
      end
    end

    # DELETE /stations/1
    def destroy
      @station.destroy
      respond_to do |format|
        format.html { redirect_to station_url, notice: "Station was deleted"}
        format.json { head :no_content }
      end
    end

    private

    def set_station
      @station = Station.find(params[:id])
    end

    def station_params
      params.require(:station).permit(:station_name)
    end
end



