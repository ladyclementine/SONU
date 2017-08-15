require 'test_helper'

class Crew::ApresentationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @crew_apresentation = crew_apresentations(:one)
  end

  test "should get index" do
    get crew_apresentations_url
    assert_response :success
  end

  test "should get new" do
    get new_crew_apresentation_url
    assert_response :success
  end

  test "should create crew_apresentation" do
    assert_difference('Crew::Apresentation.count') do
      post crew_apresentations_url, params: { crew_apresentation: { description: @crew_apresentation.description, title: @crew_apresentation.title } }
    end

    assert_redirected_to crew_apresentation_url(Crew::Apresentation.last)
  end

  test "should show crew_apresentation" do
    get crew_apresentation_url(@crew_apresentation)
    assert_response :success
  end

  test "should get edit" do
    get edit_crew_apresentation_url(@crew_apresentation)
    assert_response :success
  end

  test "should update crew_apresentation" do
    patch crew_apresentation_url(@crew_apresentation), params: { crew_apresentation: { description: @crew_apresentation.description, title: @crew_apresentation.title } }
    assert_redirected_to crew_apresentation_url(@crew_apresentation)
  end

  test "should destroy crew_apresentation" do
    assert_difference('Crew::Apresentation.count', -1) do
      delete crew_apresentation_url(@crew_apresentation)
    end

    assert_redirected_to crew_apresentations_url
  end
end
