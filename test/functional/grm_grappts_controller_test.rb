require 'test_helper'

class GrmGrapptsControllerTest < ActionController::TestCase
  setup do
    @grm_grappt = grm_grappts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:grm_grappts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create grm_grappt" do
    assert_difference('GrmGrappt.count') do
      post :create, grm_grappt: { gr_date: @grm_grappt.gr_date, gr_fdate: @grm_grappt.gr_fdate, gr_style: @grm_grappt.gr_style }
    end

    assert_redirected_to grm_grappt_path(assigns(:grm_grappt))
  end

  test "should show grm_grappt" do
    get :show, id: @grm_grappt
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @grm_grappt
    assert_response :success
  end

  test "should update grm_grappt" do
    put :update, id: @grm_grappt, grm_grappt: { gr_date: @grm_grappt.gr_date, gr_fdate: @grm_grappt.gr_fdate, gr_style: @grm_grappt.gr_style }
    assert_redirected_to grm_grappt_path(assigns(:grm_grappt))
  end

  test "should destroy grm_grappt" do
    assert_difference('GrmGrappt.count', -1) do
      delete :destroy, id: @grm_grappt
    end

    assert_redirected_to grm_grappts_path
  end
end
