require "test_helper"

class ScheduledJobsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @scheduled_job = scheduled_jobs(:one)
  end

  test "should get index" do
    get scheduled_jobs_url
    assert_response :success
  end

  test "should get new" do
    get new_scheduled_job_url
    assert_response :success
  end

  test "should create scheduled_job" do
    assert_difference('ScheduledJob.count') do
      post scheduled_jobs_url, params: { scheduled_job: { name: @scheduled_job.name } }
    end

    assert_redirected_to scheduled_job_url(ScheduledJob.last)
  end

  test "should show scheduled_job" do
    get scheduled_job_url(@scheduled_job)
    assert_response :success
  end

  test "should get edit" do
    get edit_scheduled_job_url(@scheduled_job)
    assert_response :success
  end

  test "should update scheduled_job" do
    patch scheduled_job_url(@scheduled_job), params: { scheduled_job: { name: @scheduled_job.name } }
    assert_redirected_to scheduled_job_url(@scheduled_job)
  end

  test "should destroy scheduled_job" do
    assert_difference('ScheduledJob.count', -1) do
      delete scheduled_job_url(@scheduled_job)
    end

    assert_redirected_to scheduled_jobs_url
  end
end
