require 'test_helper'

class Crew::SecretariesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @crew_secretary = crew_secretaries(:one)
  end

  test "should get index" do
    get crew_secretaries_url
    assert_response :success
  end

  test "should get new" do
    get new_crew_secretary_url
    assert_response :success
  end

  test "should create crew_secretary" do
    assert_difference('Crew::Secretary.count') do
      post crew_secretaries_url, params: { crew_secretary: { description: @crew_secretary.description, name: @crew_secretary.name, office: @crew_secretary.office, photo: @crew_secretary.photo } }
    end

    assert_redirected_to crew_secretary_url(Crew::Secretary.last)
  end

  test "should show crew_secretary" do
    get crew_secretary_url(@crew_secretary)
    assert_response :success
  end

  test "should get edit" do
    get edit_crew_secretary_url(@crew_secretary)
    assert_response :success
  end

  test "should update crew_secretary" do
    patch crew_secretary_url(@crew_secretary), params: { crew_secretary: { description: @crew_secretary.description, name: @crew_secretary.name, office: @crew_secretary.office, photo: @crew_secretary.photo } }
    assert_redirected_to crew_secretary_url(@crew_secretary)
  end

  test "should destroy crew_secretary" do
    assert_difference('Crew::Secretary.count', -1) do
      delete crew_secretary_url(@crew_secretary)
    end

    assert_redirected_to crew_secretaries_url
  end
end
