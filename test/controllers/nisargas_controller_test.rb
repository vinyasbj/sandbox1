require 'test_helper'

class NisargasControllerTest < ActionController::TestCase
  setup do
    @nisarga = nisargas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:nisargas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create nisarga" do
    assert_difference('Nisarga.count') do
      post :create, nisarga: { name: @nisarga.name }
    end

    assert_redirected_to nisarga_path(assigns(:nisarga))
  end

  test "should show nisarga" do
    get :show, id: @nisarga
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @nisarga
    assert_response :success
  end

  test "should update nisarga" do
    patch :update, id: @nisarga, nisarga: { name: @nisarga.name }
    assert_redirected_to nisarga_path(assigns(:nisarga))
  end

  test "should destroy nisarga" do
    assert_difference('Nisarga.count', -1) do
      delete :destroy, id: @nisarga
    end

    assert_redirected_to nisargas_path
  end
end
