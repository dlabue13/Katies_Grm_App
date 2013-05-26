require 'test_helper'

class DogsControllerTest < ActionController::TestCase
  setup do
    @dog = dogs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:dogs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create dog" do
    assert_difference('Dog.count') do
      post :create, dog: { dog_allergies: @dog.dog_allergies, dog_breed: @dog.dog_breed, dog_name: @dog.dog_name, dog_weight: @dog.dog_weight, int: @dog.int, string: @dog.string, string: @dog.string, string: @dog.string }
    end

    assert_redirected_to dog_path(assigns(:dog))
  end

  test "should show dog" do
    get :show, id: @dog
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @dog
    assert_response :success
  end

  test "should update dog" do
    put :update, id: @dog, dog: { dog_allergies: @dog.dog_allergies, dog_breed: @dog.dog_breed, dog_name: @dog.dog_name, dog_weight: @dog.dog_weight, int: @dog.int, string: @dog.string, string: @dog.string, string: @dog.string }
    assert_redirected_to dog_path(assigns(:dog))
  end

  test "should destroy dog" do
    assert_difference('Dog.count', -1) do
      delete :destroy, id: @dog
    end

    assert_redirected_to dogs_path
  end
end
