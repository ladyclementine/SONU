require 'test_helper'

class Crew::PartiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @crew_party = crew_parties(:one)
  end

  test "should get index" do
    get crew_parties_url
    assert_response :success
  end

  test "should get new" do
    get new_crew_party_url
    assert_response :success
  end

  test "should create crew_party" do
    assert_difference('Crew::Party.count') do
      post crew_parties_url, params: { crew_party: { description: @crew_party.description, title: @crew_party.title } }
    end

    assert_redirected_to crew_party_url(Crew::Party.last)
  end

  test "should show crew_party" do
    get crew_party_url(@crew_party)
    assert_response :success
  end

  test "should get edit" do
    get edit_crew_party_url(@crew_party)
    assert_response :success
  end

  test "should update crew_party" do
    patch crew_party_url(@crew_party), params: { crew_party: { description: @crew_party.description, title: @crew_party.title } }
    assert_redirected_to crew_party_url(@crew_party)
  end

  test "should destroy crew_party" do
    assert_difference('Crew::Party.count', -1) do
      delete crew_party_url(@crew_party)
    end

    assert_redirected_to crew_parties_url
  end
end
