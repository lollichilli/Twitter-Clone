require "test_helper"

class RedditclonesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @redditclone = redditclones(:one)
  end

  test "should get index" do
    get redditclones_url
    assert_response :success
  end

  test "should get new" do
    get new_redditclone_url
    assert_response :success
  end

  test "should create redditclone" do
    assert_difference("Redditclone.count") do
      post redditclones_url, params: { redditclone: { email: @redditclone.email, first_name: @redditclone.first_name, last_name: @redditclone.last_name, phone: @redditclone.phone, twitter: @redditclone.twitter } }
    end

    assert_redirected_to redditclone_url(Redditclone.last)
  end

  test "should show redditclone" do
    get redditclone_url(@redditclone)
    assert_response :success
  end

  test "should get edit" do
    get edit_redditclone_url(@redditclone)
    assert_response :success
  end

  test "should update redditclone" do
    patch redditclone_url(@redditclone), params: { redditclone: { email: @redditclone.email, first_name: @redditclone.first_name, last_name: @redditclone.last_name, phone: @redditclone.phone, twitter: @redditclone.twitter } }
    assert_redirected_to redditclone_url(@redditclone)
  end

  test "should destroy redditclone" do
    assert_difference("Redditclone.count", -1) do
      delete redditclone_url(@redditclone)
    end

    assert_redirected_to redditclones_url
  end
end
