require 'test_helper'

class UserMembershipsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user_membership = user_memberships(:one)
  end

  test "should get index" do
    get user_memberships_url
    assert_response :success
  end

  test "should get new" do
    get new_user_membership_url
    assert_response :success
  end

  test "should create user_membership" do
    assert_difference('UserMembership.count') do
      post user_memberships_url, params: { user_membership: {  } }
    end

    assert_redirected_to user_membership_url(UserMembership.last)
  end

  test "should show user_membership" do
    get user_membership_url(@user_membership)
    assert_response :success
  end

  test "should get edit" do
    get edit_user_membership_url(@user_membership)
    assert_response :success
  end

  test "should update user_membership" do
    patch user_membership_url(@user_membership), params: { user_membership: {  } }
    assert_redirected_to user_membership_url(@user_membership)
  end

  test "should destroy user_membership" do
    assert_difference('UserMembership.count', -1) do
      delete user_membership_url(@user_membership)
    end

    assert_redirected_to user_memberships_url
  end
end
