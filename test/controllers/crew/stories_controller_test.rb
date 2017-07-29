require 'test_helper'

class Crew::StoriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @crew_story = crew_stories(:one)
  end

  test "should get index" do
    get crew_stories_url
    assert_response :success
  end

  test "should get new" do
    get new_crew_story_url
    assert_response :success
  end

  test "should create crew_story" do
    assert_difference('Crew::Story.count') do
      post crew_stories_url, params: { crew_story: { description: @crew_story.description, title: @crew_story.title } }
    end

    assert_redirected_to crew_story_url(Crew::Story.last)
  end

  test "should show crew_story" do
    get crew_story_url(@crew_story)
    assert_response :success
  end

  test "should get edit" do
    get edit_crew_story_url(@crew_story)
    assert_response :success
  end

  test "should update crew_story" do
    patch crew_story_url(@crew_story), params: { crew_story: { description: @crew_story.description, title: @crew_story.title } }
    assert_redirected_to crew_story_url(@crew_story)
  end

  test "should destroy crew_story" do
    assert_difference('Crew::Story.count', -1) do
      delete crew_story_url(@crew_story)
    end

    assert_redirected_to crew_stories_url
  end
end
