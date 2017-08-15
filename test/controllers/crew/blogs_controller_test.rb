require 'test_helper'

class Crew::BlogsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @crew_blog = crew_blogs(:one)
  end

  test "should get index" do
    get crew_blogs_url
    assert_response :success
  end

  test "should get new" do
    get new_crew_blog_url
    assert_response :success
  end

  test "should create crew_blog" do
    assert_difference('Crew::Blog.count') do
      post crew_blogs_url, params: { crew_blog: { date: @crew_blog.date, description: @crew_blog.description, introdution: @crew_blog.introdution, photo: @crew_blog.photo, title: @crew_blog.title } }
    end

    assert_redirected_to crew_blog_url(Crew::Blog.last)
  end

  test "should show crew_blog" do
    get crew_blog_url(@crew_blog)
    assert_response :success
  end

  test "should get edit" do
    get edit_crew_blog_url(@crew_blog)
    assert_response :success
  end

  test "should update crew_blog" do
    patch crew_blog_url(@crew_blog), params: { crew_blog: { date: @crew_blog.date, description: @crew_blog.description, introdution: @crew_blog.introdution, photo: @crew_blog.photo, title: @crew_blog.title } }
    assert_redirected_to crew_blog_url(@crew_blog)
  end

  test "should destroy crew_blog" do
    assert_difference('Crew::Blog.count', -1) do
      delete crew_blog_url(@crew_blog)
    end

    assert_redirected_to crew_blogs_url
  end
end
