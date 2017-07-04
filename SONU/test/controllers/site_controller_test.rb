require 'test_helper'

class SiteControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get site_index_url
    assert_response :success
  end

  test "should get academic" do
    get site_academic_url
    assert_response :success
  end

  test "should get beta" do
    get site_beta_url
    assert_response :success
  end

  test "should get certificates" do
    get site_certificates_url
    assert_response :success
  end

  test "should get comitees" do
    get site_comitees_url
    assert_response :success
  end

  test "should get contact" do
    get site_contact_url
    assert_response :success
  end

  test "should get cronogram" do
    get site_cronogram_url
    assert_response :success
  end

  test "should get diretory" do
    get site_diretory_url
    assert_response :success
  end

  test "should get faq" do
    get site_faq_url
    assert_response :success
  end

  test "should get fortaleza" do
    get site_fortaleza_url
    assert_response :success
  end

  test "should get inscription" do
    get site_inscription_url
    assert_response :success
  end

  test "should get muns" do
    get site_muns_url
    assert_response :success
  end

  test "should get parties" do
    get site_parties_url
    assert_response :success
  end

  test "should get partners" do
    get site_partners_url
    assert_response :success
  end

  test "should get perfil" do
    get site_perfil_url
    assert_response :success
  end

  test "should get schools" do
    get site_schools_url
    assert_response :success
  end

  test "should get secretary" do
    get site_secretary_url
    assert_response :success
  end

  test "should get show_card" do
    get site_show_card_url
    assert_response :success
  end

  test "should get solidary" do
    get site_solidary_url
    assert_response :success
  end

  test "should get speeches" do
    get site_speeches_url
    assert_response :success
  end

  test "should get story" do
    get site_story_url
    assert_response :success
  end

end
