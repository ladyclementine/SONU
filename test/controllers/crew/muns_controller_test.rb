require 'test_helper'

class Crew::MunsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @crew_mun = crew_muns(:one)
  end

  test "should get index" do
    get crew_muns_url
    assert_response :success
  end

  test "should get new" do
    get new_crew_mun_url
    assert_response :success
  end

  test "should create crew_mun" do
    assert_difference('Crew::Mun.count') do
      post crew_muns_url, params: { crew_mun: { description: @crew_mun.description, title: @crew_mun.title } }
    end

    assert_redirected_to crew_mun_url(Crew::Mun.last)
  end

  test "should show crew_mun" do
    get crew_mun_url(@crew_mun)
    assert_response :success
  end

  test "should get edit" do
    get edit_crew_mun_url(@crew_mun)
    assert_response :success
  end

  test "should update crew_mun" do
    patch crew_mun_url(@crew_mun), params: { crew_mun: { description: @crew_mun.description, title: @crew_mun.title } }
    assert_redirected_to crew_mun_url(@crew_mun)
  end

  test "should destroy crew_mun" do
    assert_difference('Crew::Mun.count', -1) do
      delete crew_mun_url(@crew_mun)
    end

    assert_redirected_to crew_muns_url
  end
end
