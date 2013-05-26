require 'test_helper'

class UsersControllerTest < ActionController::TestCase
  setup do
    @user = users(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:users)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create user" do
    assert_difference('User.count') do
      post :create, user: { cust_address: @user.cust_address, cust_city: @user.cust_city, cust_phone: @user.cust_phone, cust_state: @user.cust_state, cust_zip: @user.cust_zip, f_name: @user.f_name, integer: @user.integer, integer: @user.integer, l_name: @user.l_name, string: @user.string, string: @user.string, string: @user.string, string: @user.string, string: @user.string }
    end

    assert_redirected_to user_path(assigns(:user))
  end

  test "should show user" do
    get :show, id: @user
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @user
    assert_response :success
  end

  test "should update user" do
    put :update, id: @user, user: { cust_address: @user.cust_address, cust_city: @user.cust_city, cust_phone: @user.cust_phone, cust_state: @user.cust_state, cust_zip: @user.cust_zip, f_name: @user.f_name, integer: @user.integer, integer: @user.integer, l_name: @user.l_name, string: @user.string, string: @user.string, string: @user.string, string: @user.string, string: @user.string }
    assert_redirected_to user_path(assigns(:user))
  end

  test "should destroy user" do
    assert_difference('User.count', -1) do
      delete :destroy, id: @user
    end

    assert_redirected_to users_path
  end
end
