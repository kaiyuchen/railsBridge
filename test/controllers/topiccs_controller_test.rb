require 'test_helper'

class TopiccsControllerTest < ActionController::TestCase
  setup do
    @topicc = topiccs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:topiccs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create topicc" do
    assert_difference('Topicc.count') do
      post :create, topicc: { desc: @topicc.desc, title: @topicc.title }
    end

    assert_redirected_to topicc_path(assigns(:topicc))
  end

  test "should show topicc" do
    get :show, id: @topicc
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @topicc
    assert_response :success
  end

  test "should update topicc" do
    patch :update, id: @topicc, topicc: { desc: @topicc.desc, title: @topicc.title }
    assert_redirected_to topicc_path(assigns(:topicc))
  end

  test "should destroy topicc" do
    assert_difference('Topicc.count', -1) do
      delete :destroy, id: @topicc
    end

    assert_redirected_to topiccs_path
  end
end
