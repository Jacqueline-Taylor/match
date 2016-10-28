require 'test_helper'

class GeneralEducatorsControllerTest < ActionController::TestCase
  setup do
    @general_educator = general_educators(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:general_educators)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create general_educator" do
    assert_difference('GeneralEducator.count') do
      post :create, general_educator: { name: @general_educator.name, rating: @general_educator.rating }
    end

    assert_redirected_to general_educator_path(assigns(:general_educator))
  end

  test "should show general_educator" do
    get :show, id: @general_educator
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @general_educator
    assert_response :success
  end

  test "should update general_educator" do
    patch :update, id: @general_educator, general_educator: { name: @general_educator.name, rating: @general_educator.rating }
    assert_redirected_to general_educator_path(assigns(:general_educator))
  end

  test "should destroy general_educator" do
    assert_difference('GeneralEducator.count', -1) do
      delete :destroy, id: @general_educator
    end

    assert_redirected_to general_educators_path
  end
end
