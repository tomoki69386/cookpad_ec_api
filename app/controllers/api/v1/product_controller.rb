class Api::V1::ProductController < ApplicationController

    def show
        @product = Product.where(uuid: params[:id])
        return render json: @product
    end

    def new
        @product = Product.new(
            name: params[:name],
            uuid: params[:id]
        )
        @product.save
    end
end