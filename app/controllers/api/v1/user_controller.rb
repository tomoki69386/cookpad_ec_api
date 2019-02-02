class Api::V1::UserController < ApplicationController

    def create
        @uuid = SecureRandom.urlsafe_base64(32)
        @user = User.new(
            name: params[:name],
            local: params[:local],
            product: @uuid,
            review: @uuid
        )

        if @user.save
            return render json: @user
          else
            return response_bad_request
      　 end
    end

end