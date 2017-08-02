require 'test_helper'

class Crew::SchoolsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @crew_school = crew_schools(:one)
  end

  test "should get index" do
    get crew_schools_url
    assert_response :success
  end

  test "should get new" do
    get new_crew_school_url
    assert_response :success
  end

  test "should create crew_school" do
    assert_difference('Crew::School.count') do
      post crew_schools_url, params: { crew_school: { description: @crew_school.description, photo: @crew_school.photo, title: @crew_school.title } }
    end

    assert_redirected_to crew_school_url(Crew::School.last)
  end

  test "should show crew_school" do
    get crew_school_url(@crew_school)
    assert_response :success
  end

  test "should get edit" do
    get edit_crew_school_url(@crew_school)
    assert_response :success
  end

  test "should update crew_school" do
    patch crew_school_url(@crew_school), params: { crew_school: { description: @crew_school.description, photo: @crew_school.photo, title: @crew_school.title } }
    assert_redirected_to crew_school_url(@crew_school)
  end

  test "should destroy crew_school" do
    assert_difference('Crew::School.count', -1) do
      delete crew_school_url(@crew_school)
    end

    assert_redirected_to crew_schools_url
  end
end
