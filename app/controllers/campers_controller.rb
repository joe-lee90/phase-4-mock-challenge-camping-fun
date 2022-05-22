class CampersController < ApplicationController
    def index
        campers = Camper.all
        render json: campers
    end

    def show
        camper = Camper.find(params[:id])
        if (camper)
            render json: camper, include: :activities
        else
            render json: { error: "Bird not found" }, status: :not_found
        end
    end
end
