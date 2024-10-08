require "test_helper"

class Forum::PostsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @forum_post = forum_posts(:one)
  end

  test "should get index" do
    get forum_posts_url
    assert_response :success
  end

  test "should get new" do
    get new_forum_post_url
    assert_response :success
  end

  test "should create forum_post" do
    assert_difference("Forum::Post.count") do
      post forum_posts_url, params: { forum_post: { content: @forum_post.content, title: @forum_post.title } }
    end

    assert_redirected_to forum_post_url(Forum::Post.last)
  end

  test "should show forum_post" do
    get forum_post_url(@forum_post)
    assert_response :success
  end

  test "should get edit" do
    get edit_forum_post_url(@forum_post)
    assert_response :success
  end

  test "should update forum_post" do
    patch forum_post_url(@forum_post), params: { forum_post: { content: @forum_post.content, title: @forum_post.title } }
    assert_redirected_to forum_post_url(@forum_post)
  end

  test "should destroy forum_post" do
    assert_difference("Forum::Post.count", -1) do
      delete forum_post_url(@forum_post)
    end

    assert_redirected_to forum_posts_url
  end
end
