require 'test_helper'

class KeepmepostedsControllerTest < ActionController::TestCase
  setup do
    @keepmeposted = keepmeposteds(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:keepmeposteds)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create keepmeposted" do
    assert_difference('Keepmeposted.count') do
      post :create, keepmeposted: {  }
    end

    assert_redirected_to keepmeposted_path(assigns(:keepmeposted))
  end

  test "should show keepmeposted" do
    get :show, id: @keepmeposted
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @keepmeposted
    assert_response :success
  end

  test "should update keepmeposted" do
    patch :update, id: @keepmeposted, keepmeposted: {  }
    assert_redirected_to keepmeposted_path(assigns(:keepmeposted))
  end

  test "should destroy keepmeposted" do
    assert_difference('Keepmeposted.count', -1) do
      delete :destroy, id: @keepmeposted
    end

    assert_redirected_to keepmeposteds_path
  end
end
