require 'test_helper'

class GrmUsersControllerTest < ActionController::TestCase
  setup do
    @grm_user = grm_users(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:grm_users)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create grm_user" do
    assert_difference('GrmUser.count') do
      post :create, grm_user: { address: @grm_user.address, city: @grm_user.city, fname: @grm_user.fname, lname: @grm_user.lname, phone: @grm_user.phone, state: @grm_user.state, zip: @grm_user.zip }
    end

    assert_redirected_to grm_user_path(assigns(:grm_user))
  end

  test "should show grm_user" do
    get :show, id: @grm_user
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @grm_user
    assert_response :success
  end

  test "should update grm_user" do
    put :update, id: @grm_user, grm_user: { address: @grm_user.address, city: @grm_user.city, fname: @grm_user.fname, lname: @grm_user.lname, phone: @grm_user.phone, state: @grm_user.state, zip: @grm_user.zip }
    assert_redirected_to grm_user_path(assigns(:grm_user))
  end

  test "should destroy grm_user" do
    assert_difference('GrmUser.count', -1) do
      delete :destroy, id: @grm_user
    end

    assert_redirected_to grm_users_path
  end
end
