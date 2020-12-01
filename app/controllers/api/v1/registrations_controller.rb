class Api::V1::RegistrationsController < ApplicationController

    def create
        user = User.create!(
            email: params['user']['email'],
            password: params['user']['password']
        )

        if user
            session[:user_id] = user.id
            render json: {
                status: :created,
                user: user
           }, status: :created
        else
            render json: { status: 500 }, status: :internal_server_error
        end
    end
end