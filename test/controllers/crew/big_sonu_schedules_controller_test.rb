require 'test_helper'

class Crew::BigSonuSchedulesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @crew_big_sonu_schedule = crew_big_sonu_schedules(:one)
  end

  test "should get index" do
    get crew_big_sonu_schedules_url
    assert_response :success
  end

  test "should get new" do
    get new_crew_big_sonu_schedule_url
    assert_response :success
  end

  test "should create crew_big_sonu_schedule" do
    assert_difference('Crew::BigSonuSchedule.count') do
      post crew_big_sonu_schedules_url, params: { crew_big_sonu_schedule: { activity: @crew_big_sonu_schedule.activity, end: @crew_big_sonu_schedule.end, start: @crew_big_sonu_schedule.start } }
    end

    assert_redirected_to crew_big_sonu_schedule_url(Crew::BigSonuSchedule.last)
  end

  test "should show crew_big_sonu_schedule" do
    get crew_big_sonu_schedule_url(@crew_big_sonu_schedule)
    assert_response :success
  end

  test "should get edit" do
    get edit_crew_big_sonu_schedule_url(@crew_big_sonu_schedule)
    assert_response :success
  end

  test "should update crew_big_sonu_schedule" do
    patch crew_big_sonu_schedule_url(@crew_big_sonu_schedule), params: { crew_big_sonu_schedule: { activity: @crew_big_sonu_schedule.activity, end: @crew_big_sonu_schedule.end, start: @crew_big_sonu_schedule.start } }
    assert_redirected_to crew_big_sonu_schedule_url(@crew_big_sonu_schedule)
  end

  test "should destroy crew_big_sonu_schedule" do
    assert_difference('Crew::BigSonuSchedule.count', -1) do
      delete crew_big_sonu_schedule_url(@crew_big_sonu_schedule)
    end

    assert_redirected_to crew_big_sonu_schedules_url
  end
end
