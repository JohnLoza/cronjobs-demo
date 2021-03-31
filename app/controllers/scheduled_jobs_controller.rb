class ScheduledJobsController < ApplicationController
  before_action :set_scheduled_job, only: %i[ show edit update destroy ]

  # GET /scheduled_jobs or /scheduled_jobs.json
  def index
    @scheduled_jobs = ScheduledJob.all
  end

  # GET /scheduled_jobs/1 or /scheduled_jobs/1.json
  def show
  end

  # GET /scheduled_jobs/new
  def new
    @scheduled_job = ScheduledJob.new
  end

  # GET /scheduled_jobs/1/edit
  def edit
  end

  # POST /scheduled_jobs or /scheduled_jobs.json
  def create
    @scheduled_job = ScheduledJob.new(scheduled_job_params)

    respond_to do |format|
      if @scheduled_job.save
        format.html { redirect_to @scheduled_job, notice: "Scheduled job was successfully created." }
        format.json { render :show, status: :created, location: @scheduled_job }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @scheduled_job.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /scheduled_jobs/1 or /scheduled_jobs/1.json
  def update
    respond_to do |format|
      if @scheduled_job.update(scheduled_job_params)
        format.html { redirect_to @scheduled_job, notice: "Scheduled job was successfully updated." }
        format.json { render :show, status: :ok, location: @scheduled_job }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @scheduled_job.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /scheduled_jobs/1 or /scheduled_jobs/1.json
  def destroy
    @scheduled_job.destroy
    respond_to do |format|
      format.html { redirect_to scheduled_jobs_url, notice: "Scheduled job was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_scheduled_job
      @scheduled_job = ScheduledJob.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def scheduled_job_params
      params.require(:scheduled_job).permit(:name)
    end
end
