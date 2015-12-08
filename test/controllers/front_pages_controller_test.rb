require 'test_helper'

class FrontPagesControllerTest < ActionController::TestCase
  setup do
    @front_page = front_pages(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:front_pages)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create front_page" do
    assert_difference('FrontPage.count') do
      post :create, front_page: {  }
    end

    assert_redirected_to front_page_path(assigns(:front_page))
  end

  test "should show front_page" do
    get :show, id: @front_page
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @front_page
    assert_response :success
  end

  test "should update front_page" do
    patch :update, id: @front_page, front_page: {  }
    assert_redirected_to front_page_path(assigns(:front_page))
  end

  test "should destroy front_page" do
    assert_difference('FrontPage.count', -1) do
      delete :destroy, id: @front_page
    end

    assert_redirected_to front_pages_path
  end
end
