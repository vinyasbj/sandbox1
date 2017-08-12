require 'test_helper'

class SharansControllerTest < ActionController::TestCase
  setup do
    @sharan = sharans(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sharans)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sharan" do
    assert_difference('Sharan.count') do
      post :create, sharan: { first: @sharan.first, last: @sharan.last }
    end

    assert_redirected_to sharan_path(assigns(:sharan))
  end

  test "should show sharan" do
    get :show, id: @sharan
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @sharan
    assert_response :success
  end

  test "should update sharan" do
    patch :update, id: @sharan, sharan: { first: @sharan.first, last: @sharan.last }
    assert_redirected_to sharan_path(assigns(:sharan))
  end

  test "should destroy sharan" do
    assert_difference('Sharan.count', -1) do
      delete :destroy, id: @sharan
    end

    assert_redirected_to sharans_path
  end
end
