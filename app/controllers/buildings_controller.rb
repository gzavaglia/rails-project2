class BuildingsController < ApplicationController
    def index
        if params[:user_id] 
            @buildings = User.find(params[:user_id]).buildings
        else
            @buildings = Building.all
        end
    end

    def new
        @user = Building.new
        @building = Building.new
    end

    def create
        @building = Building.new(building_params)

        if @building.save
            redirect_to user_buildings_path
        else
            render :new
        end
    end

    def show
        @building = Building.find(params[:id])
    end

    private
    def building_params
        params.require(:building).permit(:name, :address, :floors)
    end

end
