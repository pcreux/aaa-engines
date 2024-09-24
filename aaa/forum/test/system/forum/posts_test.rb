require "application_system_test_case"

class Forum::PostsTest < ApplicationSystemTestCase
  setup do
    @forum_post = forum_posts(:one)
  end

  test "visiting the index" do
    visit forum_posts_url
    assert_selector "h1", text: "Posts"
  end

  test "should create post" do
    visit forum_posts_url
    click_on "New post"

    fill_in "Content", with: @forum_post.content
    fill_in "Title", with: @forum_post.title
    click_on "Create Post"

    assert_text "Post was successfully created"
    click_on "Back"
  end

  test "should update Post" do
    visit forum_post_url(@forum_post)
    click_on "Edit this post", match: :first

    fill_in "Content", with: @forum_post.content
    fill_in "Title", with: @forum_post.title
    click_on "Update Post"

    assert_text "Post was successfully updated"
    click_on "Back"
  end

  test "should destroy Post" do
    visit forum_post_url(@forum_post)
    click_on "Destroy this post", match: :first

    assert_text "Post was successfully destroyed"
  end
end
