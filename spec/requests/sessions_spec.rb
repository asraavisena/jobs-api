require 'rails_helper'
describe 'Sessions Api', type: :request do
    describe 'Create /sessions' do
        it 'login user' do
            FactoryBot.create(:user, email: 'test@test.com', password: 'test123')
             # POST registration
             post '/api/v1/sessions', params: {"user": {
                "email": "test@test.com",
                "password": "test123"}
            }

            expect(response).to have_http_status(:ok)
        end
    end
end