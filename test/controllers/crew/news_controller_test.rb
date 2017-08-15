require 'test_helper'

class Crew::NewsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @crew_news = crew_news(:one)
  end

  test "should get index" do
    get crew_news_url
    assert_response :success
  end

  test "should get new" do
    get new_crew_news_url
    assert_response :success
  end

  test "should create crew_news" do
    assert_difference('Crew::New.count') do
      post crew_news_url, params: { crew_news: { date: @crew_news.date, description: @crew_news.description, introdution: @crew_news.introdution, photo: @crew_news.photo, title: @crew_news.title } }
    end

    assert_redirected_to crew_news_url(Crew::New.last)
  end

  test "should show crew_news" do
    get crew_news_url(@crew_news)
    assert_response :success
  end

  test "should get edit" do
    get edit_crew_news_url(@crew_news)
    assert_response :success
  end

  test "should update crew_news" do
    patch crew_news_url(@crew_news), params: { crew_news: { date: @crew_news.date, description: @crew_news.description, introdution: @crew_news.introdution, photo: @crew_news.photo, title: @crew_news.title } }
    assert_redirected_to crew_news_url(@crew_news)
  end

  test "should destroy crew_news" do
    assert_difference('Crew::New.count', -1) do
      delete crew_news_url(@crew_news)
    end

    assert_redirected_to crew_news_url
  end
end
