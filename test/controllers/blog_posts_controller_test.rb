require "test_helper"

class BlogPostsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get blog_posts_index_url
    assert_response :success
  end

  test "should get show" do
    get blog_posts_show_url
    assert_response :success
  end

  test "should get new" do
    get blog_posts_new_url
    assert_response :success
  end

  test "should get edit" do
    get blog_posts_edit_url
    assert_response :success
  end

  test "should get create" do
    get blog_posts_create_url
    assert_response :success
  end

  test "should get update" do
    get blog_posts_update_url
    assert_response :success
  end

  test "should get destroy" do
    get blog_posts_destroy_url
    assert_response :success
  end

  test "should get drafts" do
    get blog_posts_drafts_url
    assert_response :success
  end
end
