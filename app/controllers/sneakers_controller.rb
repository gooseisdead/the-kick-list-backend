class SneakersController < ApplicationController

    def index 
        sneakers = Sneaker.all 
        render json: sneakers
    end
    
    def create
        sneaker = Sneaker.create(sneaker_params)
        brand = Brand.find(params[:brand_id])
        render json: sneaker.brand
    end


    private

    def sneaker_params
        params.permit(:name, :release, :image, :value, :rarity, :description, :rating, :brand, :brand_id)
    end

end
