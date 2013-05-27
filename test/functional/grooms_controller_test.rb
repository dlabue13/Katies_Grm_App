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
      post :create, groom: { gdate: @groom.gdate, gfdate: @groom.gfdate, style: @groom.style }
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
    put :update, id: @groom, groom: { gdate: @groom.gdate, gfdate: @groom.gfdate, style: @groom.style }
    assert_redirected_to groom_path(assigns(:groom))
  end

  test "should destroy groom" do
    assert_difference('Groom.count', -1) do
      delete :destroy, id: @groom
    end

    assert_redirected_to grooms_path
  end
end
