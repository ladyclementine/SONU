require 'test_helper'

class Crew::PartnersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @crew_partner = crew_partners(:one)
  end

  test "should get index" do
    get crew_partners_url
    assert_response :success
  end

  test "should get new" do
    get new_crew_partner_url
    assert_response :success
  end

  test "should create crew_partner" do
    assert_difference('Crew::Partner.count') do
      post crew_partners_url, params: { crew_partner: { photo: @crew_partner.photo, title: @crew_partner.title } }
    end

    assert_redirected_to crew_partner_url(Crew::Partner.last)
  end

  test "should show crew_partner" do
    get crew_partner_url(@crew_partner)
    assert_response :success
  end

  test "should get edit" do
    get edit_crew_partner_url(@crew_partner)
    assert_response :success
  end

  test "should update crew_partner" do
    patch crew_partner_url(@crew_partner), params: { crew_partner: { photo: @crew_partner.photo, title: @crew_partner.title } }
    assert_redirected_to crew_partner_url(@crew_partner)
  end

  test "should destroy crew_partner" do
    assert_difference('Crew::Partner.count', -1) do
      delete crew_partner_url(@crew_partner)
    end

    assert_redirected_to crew_partners_url
  end
end
