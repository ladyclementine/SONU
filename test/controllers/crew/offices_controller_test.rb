require 'test_helper'

class Crew::OfficesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @crew_office = crew_offices(:one)
  end

  test "should get index" do
    get crew_offices_url
    assert_response :success
  end

  test "should get new" do
    get new_crew_office_url
    assert_response :success
  end

  test "should create crew_office" do
    assert_difference('Crew::Office.count') do
      post crew_offices_url, params: { crew_office: { name: @crew_office.name } }
    end

    assert_redirected_to crew_office_url(Crew::Office.last)
  end

  test "should show crew_office" do
    get crew_office_url(@crew_office)
    assert_response :success
  end

  test "should get edit" do
    get edit_crew_office_url(@crew_office)
    assert_response :success
  end

  test "should update crew_office" do
    patch crew_office_url(@crew_office), params: { crew_office: { name: @crew_office.name } }
    assert_redirected_to crew_office_url(@crew_office)
  end

  test "should destroy crew_office" do
    assert_difference('Crew::Office.count', -1) do
      delete crew_office_url(@crew_office)
    end

    assert_redirected_to crew_offices_url
  end
end
