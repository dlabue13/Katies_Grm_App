require 'test_helper'

class GrmVetapptsControllerTest < ActionController::TestCase
  setup do
    @grm_vetappt = grm_vetappts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:grm_vetappts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create grm_vetappt" do
    assert_difference('GrmVetappt.count') do
      post :create, grm_vetappt: { vet_date: @grm_vetappt.vet_date, vet_fdate: @grm_vetappt.vet_fdate, vet_fname: @grm_vetappt.vet_fname, vet_lname: @grm_vetappt.vet_lname, vet_vacc: @grm_vetappt.vet_vacc }
    end

    assert_redirected_to grm_vetappt_path(assigns(:grm_vetappt))
  end

  test "should show grm_vetappt" do
    get :show, id: @grm_vetappt
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @grm_vetappt
    assert_response :success
  end

  test "should update grm_vetappt" do
    put :update, id: @grm_vetappt, grm_vetappt: { vet_date: @grm_vetappt.vet_date, vet_fdate: @grm_vetappt.vet_fdate, vet_fname: @grm_vetappt.vet_fname, vet_lname: @grm_vetappt.vet_lname, vet_vacc: @grm_vetappt.vet_vacc }
    assert_redirected_to grm_vetappt_path(assigns(:grm_vetappt))
  end

  test "should destroy grm_vetappt" do
    assert_difference('GrmVetappt.count', -1) do
      delete :destroy, id: @grm_vetappt
    end

    assert_redirected_to grm_vetappts_path
  end
end
