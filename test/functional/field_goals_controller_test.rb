require 'test_helper'

class FieldGoalsControllerTest < ActionController::TestCase
  setup do
    @field_goal = field_goals(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:field_goals)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create field_goal" do
    assert_difference('FieldGoal.count') do
      post :create, field_goal: { date: @field_goal.date, distance: @field_goal.distance, is_good: @field_goal.is_good }
    end

    assert_redirected_to field_goal_path(assigns(:field_goal))
  end

  test "should show field_goal" do
    get :show, id: @field_goal
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @field_goal
    assert_response :success
  end

  test "should update field_goal" do
    put :update, id: @field_goal, field_goal: { date: @field_goal.date, distance: @field_goal.distance, is_good: @field_goal.is_good }
    assert_redirected_to field_goal_path(assigns(:field_goal))
  end

  test "should destroy field_goal" do
    assert_difference('FieldGoal.count', -1) do
      delete :destroy, id: @field_goal
    end

    assert_redirected_to field_goals_path
  end
end
