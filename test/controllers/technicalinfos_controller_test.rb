require 'test_helper'

class TechnicalinfosControllerTest < ActionController::TestCase
  setup do
    @technicalinfo = technicalinfos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:technicalinfos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create technicalinfo" do
    assert_difference('Technicalinfo.count') do
      post :create, technicalinfo: {  }
    end

    assert_redirected_to technicalinfo_path(assigns(:technicalinfo))
  end

  test "should show technicalinfo" do
    get :show, id: @technicalinfo
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @technicalinfo
    assert_response :success
  end

  test "should update technicalinfo" do
    patch :update, id: @technicalinfo, technicalinfo: {  }
    assert_redirected_to technicalinfo_path(assigns(:technicalinfo))
  end

  test "should destroy technicalinfo" do
    assert_difference('Technicalinfo.count', -1) do
      delete :destroy, id: @technicalinfo
    end

    assert_redirected_to technicalinfos_path
  end
end
