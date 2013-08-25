require 'test_helper'

class PrettiesControllerTest < ActionController::TestCase
  setup do
    @pretty = pretties(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pretties)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pretty" do
    assert_difference('Pretty.count') do
      post :create, pretty: {  }
    end

    assert_redirected_to pretty_path(assigns(:pretty))
  end

  test "should show pretty" do
    get :show, id: @pretty
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @pretty
    assert_response :success
  end

  test "should update pretty" do
    put :update, id: @pretty, pretty: {  }
    assert_redirected_to pretty_path(assigns(:pretty))
  end

  test "should destroy pretty" do
    assert_difference('Pretty.count', -1) do
      delete :destroy, id: @pretty
    end

    assert_redirected_to pretties_path
  end
end
