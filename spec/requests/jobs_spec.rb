require 'rails_helper'

describe 'Jobs Api', type: :request do
    describe 'GET /jobs' do
        it 'returns all jobs' do
            
            # GET job
            get '/api/v1/jobs'
    

            expect(response).to have_http_status(:success)
        end

        it 'show some specific jobs' do
            # Shiftdate
            FactoryBot.create(:shiftdate, id: 1, name: 'monday')
            FactoryBot.create(:shiftdate, id: 2, name: 'thrusday')
            # language
            FactoryBot.create(:language, id: 1, name: 'deutsch')
            FactoryBot.create(:language, id: 2, name: 'englisch')
            # POST job
            FactoryBot.create(:job, id:1, title: "testing", salary: 20, language_ids: [1,2], shiftdate_ids: [1,2])
            get '/api/v1/jobs/1'
            expect(response).to have_http_status(:success)
        end
    end

    describe 'POST /jobs' do
        it 'create new job' do
            # Shiftdate
            FactoryBot.create(:shiftdate, id: 1, name: 'monday')
            FactoryBot.create(:shiftdate, id: 2, name: 'thrusday')
             # language
             FactoryBot.create(:language, id: 1, name: 'deutsch')
             FactoryBot.create(:language, id: 2, name: 'englisch')
            post '/api/v1/jobs', params: {
                job: {title: "Create a book", salary: 10, language_ids: [1], shiftdate_ids: [1,2]}
            }

            expect(response).to have_http_status(:created)
        end
    end
end