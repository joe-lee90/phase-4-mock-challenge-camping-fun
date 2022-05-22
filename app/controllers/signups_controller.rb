class SignupsController < ApplicationController
    def index
        campers = Camper.all
        render json: campers
    end

    def show
        camper = Camper.find(params[:id])
        render json: camper, include: :activities
    end
end
