require 'test_helper'

class AVetApptsControllerTest < ActionController::TestCase
  setup do
    @a_vet_appt = a_vet_appts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:a_vet_appts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create a_vet_appt" do
    assert_difference('AVetAppt.count') do
      post :create, a_vet_appt: { string: @a_vet_appt.string, string: @a_vet_appt.string, string: @a_vet_appt.string, string: @a_vet_appt.string, string: @a_vet_appt.string, vet_date: @a_vet_appt.vet_date, vet_fdate: @a_vet_appt.vet_fdate, vet_fname: @a_vet_appt.vet_fname, vet_lname: @a_vet_appt.vet_lname, vet_vacc: @a_vet_appt.vet_vacc }
    end

    assert_redirected_to a_vet_appt_path(assigns(:a_vet_appt))
  end

  test "should show a_vet_appt" do
    get :show, id: @a_vet_appt
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @a_vet_appt
    assert_response :success
  end

  test "should update a_vet_appt" do
    put :update, id: @a_vet_appt, a_vet_appt: { string: @a_vet_appt.string, string: @a_vet_appt.string, string: @a_vet_appt.string, string: @a_vet_appt.string, string: @a_vet_appt.string, vet_date: @a_vet_appt.vet_date, vet_fdate: @a_vet_appt.vet_fdate, vet_fname: @a_vet_appt.vet_fname, vet_lname: @a_vet_appt.vet_lname, vet_vacc: @a_vet_appt.vet_vacc }
    assert_redirected_to a_vet_appt_path(assigns(:a_vet_appt))
  end

  test "should destroy a_vet_appt" do
    assert_difference('AVetAppt.count', -1) do
      delete :destroy, id: @a_vet_appt
    end

    assert_redirected_to a_vet_appts_path
  end
end
