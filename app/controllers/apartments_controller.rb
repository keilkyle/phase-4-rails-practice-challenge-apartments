class ApartmentsController < ApplicationController

    def index
        apartments = Apartment.all
        render json: apartments
    end

    def show
        apartment = Apartment.find_by(id: params[:id])
        render json: apartment
    end

    def update
        apartment = Apartment.find_by(id: params[:id])
        apartment.update(apartment_params)
        render json: apartment
    end

    def destroy
        apartment = Apartment.find_by(id: params[:id])
        apartment.destroy
    end

    def create
        apartment = Apartment.create(apartment_params)
        render json: apartment
    end

    private

    def apartment_params
        params.permit(:number)
    end

end
