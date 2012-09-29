require 'test_helper'

class LibpostsControllerTest < ActionController::TestCase
  setup do
    @libpost = libposts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:libposts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create libpost" do
    assert_difference('Libpost.count') do
      post :create, libpost: { text: @libpost.text, values: @libpost.values }
    end

    assert_redirected_to libpost_path(assigns(:libpost))
  end

  test "should show libpost" do
    get :show, id: @libpost
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @libpost
    assert_response :success
  end

  test "should update libpost" do
    put :update, id: @libpost, libpost: { text: @libpost.text, values: @libpost.values }
    assert_redirected_to libpost_path(assigns(:libpost))
  end

  test "should destroy libpost" do
    assert_difference('Libpost.count', -1) do
      delete :destroy, id: @libpost
    end

    assert_redirected_to libposts_path
  end
end
