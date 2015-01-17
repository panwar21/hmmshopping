require 'test_helper'

class CustomerservicesControllerTest < ActionController::TestCase
  setup do
    @customerservice = customerservices(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:customerservices)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create customerservice" do
    assert_difference('Customerservice.count') do
      post :create, customerservice: {  }
    end

    assert_redirected_to customerservice_path(assigns(:customerservice))
  end

  test "should show customerservice" do
    get :show, id: @customerservice
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @customerservice
    assert_response :success
  end

  test "should update customerservice" do
    patch :update, id: @customerservice, customerservice: {  }
    assert_redirected_to customerservice_path(assigns(:customerservice))
  end

  test "should destroy customerservice" do
    assert_difference('Customerservice.count', -1) do
      delete :destroy, id: @customerservice
    end

    assert_redirected_to customerservices_path
  end
end
