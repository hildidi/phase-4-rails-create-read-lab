class PlantsController < ApplicationController
    
    #GET /plants 
    def index
      render json: Plant.all
    end


    #GET /plants/:id
    def show
        plant = Plant.find_by(id: params[:id])
        render json: plant
    end  
    
    
    #POST /plants/:id
    def create
        plant = Plant.create(plant_params)
        render json: plant, status: :created
    end

    private
    def plant_params
        params.permit(:name, :image, :price)    
        # byebug
    end

end
