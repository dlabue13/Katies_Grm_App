require 'test_helper'

class GrmStylistsControllerTest < ActionController::TestCase
  setup do
    @grm_stylist = grm_stylists(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:grm_stylists)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create grm_stylist" do
    assert_difference('GrmStylist.count') do
      post :create, grm_stylist: { styl_fname: @grm_stylist.styl_fname, styl_lname: @grm_stylist.styl_lname, styl_specialty: @grm_stylist.styl_specialty }
    end

    assert_redirected_to grm_stylist_path(assigns(:grm_stylist))
  end

  test "should show grm_stylist" do
    get :show, id: @grm_stylist
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @grm_stylist
    assert_response :success
  end

  test "should update grm_stylist" do
    put :update, id: @grm_stylist, grm_stylist: { styl_fname: @grm_stylist.styl_fname, styl_lname: @grm_stylist.styl_lname, styl_specialty: @grm_stylist.styl_specialty }
    assert_redirected_to grm_stylist_path(assigns(:grm_stylist))
  end

  test "should destroy grm_stylist" do
    assert_difference('GrmStylist.count', -1) do
      delete :destroy, id: @grm_stylist
    end

    assert_redirected_to grm_stylists_path
  end
end
