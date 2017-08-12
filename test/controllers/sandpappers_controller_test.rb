require 'test_helper'

class SandpappersControllerTest < ActionController::TestCase
  setup do
    @sandpapper = sandpappers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sandpappers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sandpapper" do
    assert_difference('Sandpapper.count') do
      post :create, sandpapper: { name: @sandpapper.name }
    end

    assert_redirected_to sandpapper_path(assigns(:sandpapper))
  end

  test "should show sandpapper" do
    get :show, id: @sandpapper
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @sandpapper
    assert_response :success
  end

  test "should update sandpapper" do
    patch :update, id: @sandpapper, sandpapper: { name: @sandpapper.name }
    assert_redirected_to sandpapper_path(assigns(:sandpapper))
  end

  test "should destroy sandpapper" do
    assert_difference('Sandpapper.count', -1) do
      delete :destroy, id: @sandpapper
    end

    assert_redirected_to sandpappers_path
  end
end
