require 'test_helper'

class GrmPicsControllerTest < ActionController::TestCase
  setup do
    @grm_pic = grm_pics(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:grm_pics)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create grm_pic" do
    assert_difference('GrmPic.count') do
      post :create, grm_pic: { description: @grm_pic.description, image: @grm_pic.image, name: @grm_pic.name }
    end

    assert_redirected_to grm_pic_path(assigns(:grm_pic))
  end

  test "should show grm_pic" do
    get :show, id: @grm_pic
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @grm_pic
    assert_response :success
  end

  test "should update grm_pic" do
    put :update, id: @grm_pic, grm_pic: { description: @grm_pic.description, image: @grm_pic.image, name: @grm_pic.name }
    assert_redirected_to grm_pic_path(assigns(:grm_pic))
  end

  test "should destroy grm_pic" do
    assert_difference('GrmPic.count', -1) do
      delete :destroy, id: @grm_pic
    end

    assert_redirected_to grm_pics_path
  end
end
