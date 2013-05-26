require 'test_helper'

class StylistsControllerTest < ActionController::TestCase
  setup do
    @stylist = stylists(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:stylists)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create stylist" do
    assert_difference('Stylist.count') do
      post :create, stylist: { string: @stylist.string, string: @stylist.string, string: @stylist.string, style_fname: @stylist.style_fname, style_specialty: @stylist.style_specialty, stylst_lname: @stylist.stylst_lname }
    end

    assert_redirected_to stylist_path(assigns(:stylist))
  end

  test "should show stylist" do
    get :show, id: @stylist
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @stylist
    assert_response :success
  end

  test "should update stylist" do
    put :update, id: @stylist, stylist: { string: @stylist.string, string: @stylist.string, string: @stylist.string, style_fname: @stylist.style_fname, style_specialty: @stylist.style_specialty, stylst_lname: @stylist.stylst_lname }
    assert_redirected_to stylist_path(assigns(:stylist))
  end

  test "should destroy stylist" do
    assert_difference('Stylist.count', -1) do
      delete :destroy, id: @stylist
    end

    assert_redirected_to stylists_path
  end
end
