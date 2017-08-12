require 'test_helper'

class ChetaNsControllerTest < ActionController::TestCase
  setup do
    @chetan = chetans(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:chetans)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create chetan" do
    assert_difference('Chetan.count') do
      post :create, chetan: { commit_id: @chetan.commit_id, name: @chetan.name }
    end

    assert_redirected_to chetan_path(assigns(:chetan))
  end

  test "should show chetan" do
    get :show, id: @chetan
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @chetan
    assert_response :success
  end

  test "should update chetan" do
    patch :update, id: @chetan, chetan: { commit_id: @chetan.commit_id, name: @chetan.name }
    assert_redirected_to chetan_path(assigns(:chetan))
  end

  test "should destroy chetan" do
    assert_difference('Chetan.count', -1) do
      delete :destroy, id: @chetan
    end

    assert_redirected_to chetans_path
  end
end
