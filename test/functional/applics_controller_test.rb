require 'test_helper'

class ApplicsControllerTest < ActionController::TestCase
  setup do
    @applic = applics(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:applics)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create applic" do
    assert_difference('Applic.count') do
      post :create, applic: { message: @applic.message, resume_id: @applic.resume_id }
    end

    assert_redirected_to applic_path(assigns(:applic))
  end

  test "should show applic" do
    get :show, id: @applic
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @applic
    assert_response :success
  end

  test "should update applic" do
    put :update, id: @applic, applic: { message: @applic.message, resume_id: @applic.resume_id }
    assert_redirected_to applic_path(assigns(:applic))
  end

  test "should destroy applic" do
    assert_difference('Applic.count', -1) do
      delete :destroy, id: @applic
    end

    assert_redirected_to applics_path
  end
end
