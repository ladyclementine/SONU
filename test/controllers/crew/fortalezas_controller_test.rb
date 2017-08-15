require 'test_helper'

class Crew::FortalezasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @crew_fortaleza = crew_fortalezas(:one)
  end

  test "should get index" do
    get crew_fortalezas_url
    assert_response :success
  end

  test "should get new" do
    get new_crew_fortaleza_url
    assert_response :success
  end

  test "should create crew_fortaleza" do
    assert_difference('Crew::Fortaleza.count') do
      post crew_fortalezas_url, params: { crew_fortaleza: { description: @crew_fortaleza.description, title: @crew_fortaleza.title } }
    end

    assert_redirected_to crew_fortaleza_url(Crew::Fortaleza.last)
  end

  test "should show crew_fortaleza" do
    get crew_fortaleza_url(@crew_fortaleza)
    assert_response :success
  end

  test "should get edit" do
    get edit_crew_fortaleza_url(@crew_fortaleza)
    assert_response :success
  end

  test "should update crew_fortaleza" do
    patch crew_fortaleza_url(@crew_fortaleza), params: { crew_fortaleza: { description: @crew_fortaleza.description, title: @crew_fortaleza.title } }
    assert_redirected_to crew_fortaleza_url(@crew_fortaleza)
  end

  test "should destroy crew_fortaleza" do
    assert_difference('Crew::Fortaleza.count', -1) do
      delete crew_fortaleza_url(@crew_fortaleza)
    end

    assert_redirected_to crew_fortalezas_url
  end
end
