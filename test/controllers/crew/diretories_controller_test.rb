require 'test_helper'

class Crew::DiretoriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @crew_diretory = crew_diretories(:one)
  end

  test "should get index" do
    get crew_diretories_url
    assert_response :success
  end

  test "should get new" do
    get new_crew_diretory_url
    assert_response :success
  end

  test "should create crew_diretory" do
    assert_difference('Crew::Diretory.count') do
      post crew_diretories_url, params: { crew_diretory: { description: @crew_diretory.description, name: @crew_diretory.name, office_id: @crew_diretory.office_id, photo: @crew_diretory.photo } }
    end

    assert_redirected_to crew_diretory_url(Crew::Diretory.last)
  end

  test "should show crew_diretory" do
    get crew_diretory_url(@crew_diretory)
    assert_response :success
  end

  test "should get edit" do
    get edit_crew_diretory_url(@crew_diretory)
    assert_response :success
  end

  test "should update crew_diretory" do
    patch crew_diretory_url(@crew_diretory), params: { crew_diretory: { description: @crew_diretory.description, name: @crew_diretory.name, office_id: @crew_diretory.office_id, photo: @crew_diretory.photo } }
    assert_redirected_to crew_diretory_url(@crew_diretory)
  end

  test "should destroy crew_diretory" do
    assert_difference('Crew::Diretory.count', -1) do
      delete crew_diretory_url(@crew_diretory)
    end

    assert_redirected_to crew_diretories_url
  end
end
