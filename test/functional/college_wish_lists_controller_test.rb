require 'test_helper'

class CollegeWishListsControllerTest < ActionController::TestCase
  setup do
    @college_wish_list = college_wish_lists(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:college_wish_lists)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create college_wish_list" do
    assert_difference('CollegeWishList.count') do
      post :create, college_wish_list: { coaching_staff_url: @college_wish_list.coaching_staff_url, college_city: @college_wish_list.college_city, college_main_url: @college_wish_list.college_main_url, college_name: @college_wish_list.college_name, college_state: @college_wish_list.college_state, college_street_address: @college_wish_list.college_street_address, college_zip: @college_wish_list.college_zip, comments: @college_wish_list.comments, head_coach_email: @college_wish_list.head_coach_email, head_coach_name: @college_wish_list.head_coach_name, major_offered: @college_wish_list.major_offered, mascot: @college_wish_list.mascot, special_teams_coach_email: @college_wish_list.special_teams_coach_email, special_teams_coach_name: @college_wish_list.special_teams_coach_name, team_url: @college_wish_list.team_url }
    end

    assert_redirected_to college_wish_list_path(assigns(:college_wish_list))
  end

  test "should show college_wish_list" do
    get :show, id: @college_wish_list
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @college_wish_list
    assert_response :success
  end

  test "should update college_wish_list" do
    put :update, id: @college_wish_list, college_wish_list: { coaching_staff_url: @college_wish_list.coaching_staff_url, college_city: @college_wish_list.college_city, college_main_url: @college_wish_list.college_main_url, college_name: @college_wish_list.college_name, college_state: @college_wish_list.college_state, college_street_address: @college_wish_list.college_street_address, college_zip: @college_wish_list.college_zip, comments: @college_wish_list.comments, head_coach_email: @college_wish_list.head_coach_email, head_coach_name: @college_wish_list.head_coach_name, major_offered: @college_wish_list.major_offered, mascot: @college_wish_list.mascot, special_teams_coach_email: @college_wish_list.special_teams_coach_email, special_teams_coach_name: @college_wish_list.special_teams_coach_name, team_url: @college_wish_list.team_url }
    assert_redirected_to college_wish_list_path(assigns(:college_wish_list))
  end

  test "should destroy college_wish_list" do
    assert_difference('CollegeWishList.count', -1) do
      delete :destroy, id: @college_wish_list
    end

    assert_redirected_to college_wish_lists_path
  end
end
