class Api::V1::JobsController < ApplicationController
  include CurrentUserConcern
  before_action :set_job, only: [:show, :update, :destroy]

  def home
    render json: { status: "it's working"}
  end
  # GET /jobs
  def index
    @jobs = Job.all
    

    render json: @jobs,  include: ['languages', 'shiftdates'], status: :ok
  end

  # GET /jobs/1
  def show
    render json: @job, status: :ok
    # render json: @job,  include: 'languages', status: :ok
  end

  # Search by title
  def search
    if (params[:search])
      @search_job = Job.search(params[:search])
      render json: @search_job, status: :ok
    return
    elsif (params[:searchL])
      @searchL_job = Job.searchL(params[:searchL])
      render json: @searchL_job, status: :ok
    return
    end
  end

  # POST /jobs
  def create
    @job = Job.new(job_params)
    # for testing first
    # @job.user = @current_user

    if @job.save
      render json: @job, status: :created
    else
      render json: @job.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /jobs/1
  def update
    if @job.update(job_params)
      render json: @job, status: :created
    else
      render json: @job.errors, status: :unprocessable_entity
    end
  end

  # DELETE /jobs/1
  def destroy
    @job.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_job
      @job = Job.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def job_params
      params.require(:job).permit(:title, :salary, language_ids: [], shiftdate_ids: [],languages_attributes: [:id])
    end
end
