class Api::V1::UserController < ApplicationController

    # 登録
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

    # 全員
    def index
        @users = User.all
        return render json: @users
    end

    # 詳細
    def show
        @user = User.find_by(id: params[:id])
        return render json: @user
    end

end