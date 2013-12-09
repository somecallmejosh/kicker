require 'test_helper'

class KickoffsControllerTest < ActionController::TestCase
  setup do
    @kickoff = kickoffs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:kickoffs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create kickoff" do
    assert_difference('Kickoff.count') do
      post :create, kickoff: { date: @kickoff.date, distance: @kickoff.distance, hangtime: @kickoff.hangtime }
    end

    assert_redirected_to kickoff_path(assigns(:kickoff))
  end

  test "should show kickoff" do
    get :show, id: @kickoff
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @kickoff
    assert_response :success
  end

  test "should update kickoff" do
    put :update, id: @kickoff, kickoff: { date: @kickoff.date, distance: @kickoff.distance, hangtime: @kickoff.hangtime }
    assert_redirected_to kickoff_path(assigns(:kickoff))
  end

  test "should destroy kickoff" do
    assert_difference('Kickoff.count', -1) do
      delete :destroy, id: @kickoff
    end

    assert_redirected_to kickoffs_path
  end
end
