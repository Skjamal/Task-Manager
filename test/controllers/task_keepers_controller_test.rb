require 'test_helper'

class TaskKeepersControllerTest < ActionController::TestCase
  setup do
    @task_keeper = task_keepers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:task_keepers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create task_keeper" do
    assert_difference('TaskKeeper.count') do
      post :create, task_keeper: { description: @task_keeper.description, title: @task_keeper.title }
    end

    assert_redirected_to task_keeper_path(assigns(:task_keeper))
  end

  test "should show task_keeper" do
    get :show, id: @task_keeper
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @task_keeper
    assert_response :success
  end

  test "should update task_keeper" do
    patch :update, id: @task_keeper, task_keeper: { description: @task_keeper.description, title: @task_keeper.title }
    assert_redirected_to task_keeper_path(assigns(:task_keeper))
  end

  test "should destroy task_keeper" do
    assert_difference('TaskKeeper.count', -1) do
      delete :destroy, id: @task_keeper
    end

    assert_redirected_to task_keepers_path
  end
end
