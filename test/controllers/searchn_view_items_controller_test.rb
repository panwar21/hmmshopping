require 'test_helper'

class SearchnViewItemsControllerTest < ActionController::TestCase
  setup do
    @searchn_view_item = searchn_view_items(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:searchn_view_items)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create searchn_view_item" do
    assert_difference('SearchnViewItem.count') do
      post :create, searchn_view_item: {  }
    end

    assert_redirected_to searchn_view_item_path(assigns(:searchn_view_item))
  end

  test "should show searchn_view_item" do
    get :show, id: @searchn_view_item
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @searchn_view_item
    assert_response :success
  end

  test "should update searchn_view_item" do
    patch :update, id: @searchn_view_item, searchn_view_item: {  }
    assert_redirected_to searchn_view_item_path(assigns(:searchn_view_item))
  end

  test "should destroy searchn_view_item" do
    assert_difference('SearchnViewItem.count', -1) do
      delete :destroy, id: @searchn_view_item
    end

    assert_redirected_to searchn_view_items_path
  end
end
