require 'rails_helper'
describe 'Users Api', type: :request do
    describe 'GET /users' do
        it 'returns all users' do
            # GET job
            get '/api/v1/users'
            expect(response).to have_http_status(:success)
        end
    end

    describe 'POST /registration' do
        it 'returns all users' do
            # POST registration
            post '/api/v1/registrations', params: {"user": {
                "email": "4test@test.com",
                "password": "test123"}
            }

            expect(response).to have_http_status(:created)
        end
    end
end