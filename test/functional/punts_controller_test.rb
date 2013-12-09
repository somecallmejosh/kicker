require 'test_helper'

class PuntsControllerTest < ActionController::TestCase
  setup do
    @punt = punts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:punts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create punt" do
    assert_difference('Punt.count') do
      post :create, punt: { date: @punt.date, distance: @punt.distance, hangtime: @punt.hangtime }
    end

    assert_redirected_to punt_path(assigns(:punt))
  end

  test "should show punt" do
    get :show, id: @punt
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @punt
    assert_response :success
  end

  test "should update punt" do
    put :update, id: @punt, punt: { date: @punt.date, distance: @punt.distance, hangtime: @punt.hangtime }
    assert_redirected_to punt_path(assigns(:punt))
  end

  test "should destroy punt" do
    assert_difference('Punt.count', -1) do
      delete :destroy, id: @punt
    end

    assert_redirected_to punts_path
  end
end
