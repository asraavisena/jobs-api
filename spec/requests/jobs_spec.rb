require 'rails_helper'

describe 'Jobs Api', type: :request do
    describe 'GET /jobs' do
        it 'returns all jobs' do
            # GET job
            get '/api/v1/jobs'
            expect(response).to have_http_status(:success)
        end

            # already exists in table
            # # Shiftdate
            # FactoryBot.create(:shiftdate, id: 1, name: 'monday')
            # FactoryBot.create(:shiftdate, id: 2, name: 'thrusday')
            # # language
            # FactoryBot.create(:language, id: 1, name: 'deutsch')
            # FactoryBot.create(:language, id: 2, name: 'englisch')
            # # POST job
            # FactoryBot.create(:job, id:1, title: "testing in jobs", salary: 20, 
            #                     language_ids: [1,2], shiftdate_ids: [1,2])
            it 'Show :id' do
                get '/api/v1/jobs/1'
                expect(response).to have_http_status(:ok)
            end

            it 'search title' do
                get '/api/v1/search?search=testing'
                expect(response).to have_http_status(:ok)
            end

            it 'search language' do
                get '/api/v1/search?searchL=deutsch'
                expect(response).to have_http_status(:ok)
            end
    end

    describe 'POST /jobs' do
        it 'create new job' do
            # already exists in table
            # # Shiftdate
            # FactoryBot.create(:shiftdate, id: 1, name: 'monday')
            # FactoryBot.create(:shiftdate, id: 2, name: 'thrusday')
            #  # language
            #  FactoryBot.create(:language, id: 1, name: 'deutsch')
            #  FactoryBot.create(:language, id: 2, name: 'englisch')
            post '/api/v1/jobs', params: {
                job: {title: "Create a book", salary: 10, language_ids: [1], shiftdate_ids: [1,2]}
            }
            expect(response).to have_http_status(:created)
        end
    end
    # describe 'PATCH apply/jobs' do
    #     it 'create new job' do
    #         FactoryBot.create(:user,id: 1, email: 'test@test.com', password: 'test123')
    #         FactoryBot.create(:job, id:2, title: "testingin jobsssss", salary: 20, 
    #         language_ids: [1,2], shiftdate_ids: [1,2])
    #         patch '/api/v1/jobs/1', params: {
    #             job: {user_ids: [1]}
    #         }

    #         patch '/api/v1/jobs/2', params: {
    #             job: {user_ids: [1]}
    #         }

           
    #         expect(response).to have_http_status(:created)
    #     end
    # end
end