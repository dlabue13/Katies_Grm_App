require 'test_helper'

class GrmDogsControllerTest < ActionController::TestCase
  setup do
    @grm_dog = grm_dogs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:grm_dogs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create grm_dog" do
    assert_difference('GrmDog.count') do
      post :create, grm_dog: { allergies: @grm_dog.allergies, breed: @grm_dog.breed, name: @grm_dog.name, weight: @grm_dog.weight }
    end

    assert_redirected_to grm_dog_path(assigns(:grm_dog))
  end

  test "should show grm_dog" do
    get :show, id: @grm_dog
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @grm_dog
    assert_response :success
  end

  test "should update grm_dog" do
    put :update, id: @grm_dog, grm_dog: { allergies: @grm_dog.allergies, breed: @grm_dog.breed, name: @grm_dog.name, weight: @grm_dog.weight }
    assert_redirected_to grm_dog_path(assigns(:grm_dog))
  end

  test "should destroy grm_dog" do
    assert_difference('GrmDog.count', -1) do
      delete :destroy, id: @grm_dog
    end

    assert_redirected_to grm_dogs_path
  end
end
