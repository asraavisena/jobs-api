class Api::V1::UsersController < ApplicationController
  # GET /jobs
  def index
    @users = User.all

    render json: @users
  end

end
