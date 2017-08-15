require 'test_helper'

class Crew::SolidariesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @crew_solidary = crew_solidaries(:one)
  end

  test "should get index" do
    get crew_solidaries_url
    assert_response :success
  end

  test "should get new" do
    get new_crew_solidary_url
    assert_response :success
  end

  test "should create crew_solidary" do
    assert_difference('Crew::Solidary.count') do
      post crew_solidaries_url, params: { crew_solidary: { description: @crew_solidary.description, photo: @crew_solidary.photo, title: @crew_solidary.title } }
    end

    assert_redirected_to crew_solidary_url(Crew::Solidary.last)
  end

  test "should show crew_solidary" do
    get crew_solidary_url(@crew_solidary)
    assert_response :success
  end

  test "should get edit" do
    get edit_crew_solidary_url(@crew_solidary)
    assert_response :success
  end

  test "should update crew_solidary" do
    patch crew_solidary_url(@crew_solidary), params: { crew_solidary: { description: @crew_solidary.description, photo: @crew_solidary.photo, title: @crew_solidary.title } }
    assert_redirected_to crew_solidary_url(@crew_solidary)
  end

  test "should destroy crew_solidary" do
    assert_difference('Crew::Solidary.count', -1) do
      delete crew_solidary_url(@crew_solidary)
    end

    assert_redirected_to crew_solidaries_url
  end
end
