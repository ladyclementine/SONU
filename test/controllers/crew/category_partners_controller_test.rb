require 'test_helper'

class Crew::CategoryPartnersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @crew_category_partner = crew_category_partners(:one)
  end

  test "should get index" do
    get crew_category_partners_url
    assert_response :success
  end

  test "should get new" do
    get new_crew_category_partner_url
    assert_response :success
  end

  test "should create crew_category_partner" do
    assert_difference('Crew::CategoryPartner.count') do
      post crew_category_partners_url, params: { crew_category_partner: { name: @crew_category_partner.name } }
    end

    assert_redirected_to crew_category_partner_url(Crew::CategoryPartner.last)
  end

  test "should show crew_category_partner" do
    get crew_category_partner_url(@crew_category_partner)
    assert_response :success
  end

  test "should get edit" do
    get edit_crew_category_partner_url(@crew_category_partner)
    assert_response :success
  end

  test "should update crew_category_partner" do
    patch crew_category_partner_url(@crew_category_partner), params: { crew_category_partner: { name: @crew_category_partner.name } }
    assert_redirected_to crew_category_partner_url(@crew_category_partner)
  end

  test "should destroy crew_category_partner" do
    assert_difference('Crew::CategoryPartner.count', -1) do
      delete crew_category_partner_url(@crew_category_partner)
    end

    assert_redirected_to crew_category_partners_url
  end
end
