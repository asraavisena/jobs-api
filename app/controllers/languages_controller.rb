class LanguagesController < ApplicationController
    # GET /jobs
    def index
      @language = Language.all
  
      render json: @language, include: ['jobs'], status: :ok
    end
  end