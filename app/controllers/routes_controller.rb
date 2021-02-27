class RoutesController < ApplicationController 
    def index
        @routes = Route.all
    end

    def create
        @route = Route.create(route_params)
        render json: @route
    end

    def show
        @route = Route.find(params[:id])
    end

    def update
        @route = Route.find(params[:id])
        @route.update(route_params)
    end

    def destroy
        @route = Route.find(params[:id])
        @route.destroy
      
        # redirect_to location_path
    end

    private
    def route_params
        params.require(:name, :coordinates).permit(:name, :coordinates, :description, :user_id)
    end
end