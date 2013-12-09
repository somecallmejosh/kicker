require 'test_helper'

class PointAfterAttemptsControllerTest < ActionController::TestCase
  setup do
    @point_after_attempt = point_after_attempts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:point_after_attempts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create point_after_attempt" do
    assert_difference('PointAfterAttempt.count') do
      post :create, point_after_attempt: { date: @point_after_attempt.date, is_good: @point_after_attempt.is_good }
    end

    assert_redirected_to point_after_attempt_path(assigns(:point_after_attempt))
  end

  test "should show point_after_attempt" do
    get :show, id: @point_after_attempt
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @point_after_attempt
    assert_response :success
  end

  test "should update point_after_attempt" do
    put :update, id: @point_after_attempt, point_after_attempt: { date: @point_after_attempt.date, is_good: @point_after_attempt.is_good }
    assert_redirected_to point_after_attempt_path(assigns(:point_after_attempt))
  end

  test "should destroy point_after_attempt" do
    assert_difference('PointAfterAttempt.count', -1) do
      delete :destroy, id: @point_after_attempt
    end

    assert_redirected_to point_after_attempts_path
  end
end
