require 'test_helper'

class GroomsControllerTest < ActionController::TestCase
  setup do
    @groom = grooms(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:grooms)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create groom" do
    assert_difference('Groom.count') do
      post :create, groom: { grappt_date: @groom.grappt_date, grappt_futappdate: @groom.grappt_futappdate, grappt_style: @groom.grappt_style, string: @groom.string, string: @groom.string, string: @groom.string }
    end

    assert_redirected_to groom_path(assigns(:groom))
  end

  test "should show groom" do
    get :show, id: @groom
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @groom
    assert_response :success
  end

  test "should update groom" do
    put :update, id: @groom, groom: { grappt_date: @groom.grappt_date, grappt_futappdate: @groom.grappt_futappdate, grappt_style: @groom.grappt_style, string: @groom.string, string: @groom.string, string: @groom.string }
    assert_redirected_to groom_path(assigns(:groom))
  end

  test "should destroy groom" do
    assert_difference('Groom.count', -1) do
      delete :destroy, id: @groom
    end

    assert_redirected_to grooms_path
  end
end
