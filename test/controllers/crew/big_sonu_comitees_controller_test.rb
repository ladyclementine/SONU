require 'test_helper'

class Crew::BigSonuComiteesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @crew_big_sonu_comitee = crew_big_sonu_comitees(:one)
  end

  test "should get index" do
    get crew_big_sonu_comitees_url
    assert_response :success
  end

  test "should get new" do
    get new_crew_big_sonu_comitee_url
    assert_response :success
  end

  test "should create crew_big_sonu_comitee" do
    assert_difference('Crew::BigSonuComitee.count') do
      post crew_big_sonu_comitees_url, params: { crew_big_sonu_comitee: { description: @crew_big_sonu_comitee.description, name: @crew_big_sonu_comitee.name, photo: @crew_big_sonu_comitee.photo } }
    end

    assert_redirected_to crew_big_sonu_comitee_url(Crew::BigSonuComitee.last)
  end

  test "should show crew_big_sonu_comitee" do
    get crew_big_sonu_comitee_url(@crew_big_sonu_comitee)
    assert_response :success
  end

  test "should get edit" do
    get edit_crew_big_sonu_comitee_url(@crew_big_sonu_comitee)
    assert_response :success
  end

  test "should update crew_big_sonu_comitee" do
    patch crew_big_sonu_comitee_url(@crew_big_sonu_comitee), params: { crew_big_sonu_comitee: { description: @crew_big_sonu_comitee.description, name: @crew_big_sonu_comitee.name, photo: @crew_big_sonu_comitee.photo } }
    assert_redirected_to crew_big_sonu_comitee_url(@crew_big_sonu_comitee)
  end

  test "should destroy crew_big_sonu_comitee" do
    assert_difference('Crew::BigSonuComitee.count', -1) do
      delete crew_big_sonu_comitee_url(@crew_big_sonu_comitee)
    end

    assert_redirected_to crew_big_sonu_comitees_url
  end
end
