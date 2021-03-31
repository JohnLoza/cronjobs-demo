require "application_system_test_case"

class ScheduledJobsTest < ApplicationSystemTestCase
  setup do
    @scheduled_job = scheduled_jobs(:one)
  end

  test "visiting the index" do
    visit scheduled_jobs_url
    assert_selector "h1", text: "Scheduled Jobs"
  end

  test "creating a Scheduled job" do
    visit scheduled_jobs_url
    click_on "New Scheduled Job"

    fill_in "Name", with: @scheduled_job.name
    click_on "Create Scheduled job"

    assert_text "Scheduled job was successfully created"
    click_on "Back"
  end

  test "updating a Scheduled job" do
    visit scheduled_jobs_url
    click_on "Edit", match: :first

    fill_in "Name", with: @scheduled_job.name
    click_on "Update Scheduled job"

    assert_text "Scheduled job was successfully updated"
    click_on "Back"
  end

  test "destroying a Scheduled job" do
    visit scheduled_jobs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Scheduled job was successfully destroyed"
  end
end
