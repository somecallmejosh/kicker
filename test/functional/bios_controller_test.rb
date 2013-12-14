require 'test_helper'

class BiosControllerTest < ActionController::TestCase
  setup do
    @bio = bios(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:bios)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create bio" do
    assert_difference('Bio.count') do
      post :create, bio: { ACT_score: @bio.ACT_score, GPA: @bio.GPA, SAT_score: @bio.SAT_score, bench_press: @bio.bench_press, bio_content: @bio.bio_content, clearing_house_cleared: @bio.clearing_house_cleared, college_credits_earned: @bio.college_credits_earned, email: @bio.email, first_name: @bio.first_name, graduation_year: @bio.graduation_year, height: @bio.height, image_link: @bio.image_link, last_name: @bio.last_name, phone: @bio.phone, primary_kicking_coach: @bio.primary_kicking_coach, school_city: @bio.school_city, school_name: @bio.school_name, school_state: @bio.school_state, school_street: @bio.school_street, school_url: @bio.school_url, school_zip: @bio.school_zip, sprint_40_time: @bio.sprint_40_time, squat: @bio.squat, team_head_coach: @bio.team_head_coach, team_head_coach_email: @bio.team_head_coach_email, team_head_coach_phone: @bio.team_head_coach_phone, team_special_teams_coach: @bio.team_special_teams_coach, vertical_jump: @bio.vertical_jump, weight: @bio.weight }
    end

    assert_redirected_to bio_path(assigns(:bio))
  end

  test "should show bio" do
    get :show, id: @bio
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @bio
    assert_response :success
  end

  test "should update bio" do
    put :update, id: @bio, bio: { ACT_score: @bio.ACT_score, GPA: @bio.GPA, SAT_score: @bio.SAT_score, bench_press: @bio.bench_press, bio_content: @bio.bio_content, clearing_house_cleared: @bio.clearing_house_cleared, college_credits_earned: @bio.college_credits_earned, email: @bio.email, first_name: @bio.first_name, graduation_year: @bio.graduation_year, height: @bio.height, image_link: @bio.image_link, last_name: @bio.last_name, phone: @bio.phone, primary_kicking_coach: @bio.primary_kicking_coach, school_city: @bio.school_city, school_name: @bio.school_name, school_state: @bio.school_state, school_street: @bio.school_street, school_url: @bio.school_url, school_zip: @bio.school_zip, sprint_40_time: @bio.sprint_40_time, squat: @bio.squat, team_head_coach: @bio.team_head_coach, team_head_coach_email: @bio.team_head_coach_email, team_head_coach_phone: @bio.team_head_coach_phone, team_special_teams_coach: @bio.team_special_teams_coach, vertical_jump: @bio.vertical_jump, weight: @bio.weight }
    assert_redirected_to bio_path(assigns(:bio))
  end

  test "should destroy bio" do
    assert_difference('Bio.count', -1) do
      delete :destroy, id: @bio
    end

    assert_redirected_to bios_path
  end
end
