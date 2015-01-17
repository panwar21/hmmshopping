require 'test_helper'

class MyAccountsControllerTest < ActionController::TestCase
  setup do
    @my_account = my_accounts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:my_accounts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create my_account" do
    assert_difference('MyAccount.count') do
      post :create, my_account: {  }
    end

    assert_redirected_to my_account_path(assigns(:my_account))
  end

  test "should show my_account" do
    get :show, id: @my_account
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @my_account
    assert_response :success
  end

  test "should update my_account" do
    patch :update, id: @my_account, my_account: {  }
    assert_redirected_to my_account_path(assigns(:my_account))
  end

  test "should destroy my_account" do
    assert_difference('MyAccount.count', -1) do
      delete :destroy, id: @my_account
    end

    assert_redirected_to my_accounts_path
  end
end
