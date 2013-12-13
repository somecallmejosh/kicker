require 'test_helper'

class ImageSlidersControllerTest < ActionController::TestCase
  setup do
    @image_slider = image_sliders(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:image_sliders)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create image_slider" do
    assert_difference('ImageSlider.count') do
      post :create, image_slider: { alt_tag: @image_slider.alt_tag, caption: @image_slider.caption, image_link: @image_slider.image_link }
    end

    assert_redirected_to image_slider_path(assigns(:image_slider))
  end

  test "should show image_slider" do
    get :show, id: @image_slider
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @image_slider
    assert_response :success
  end

  test "should update image_slider" do
    put :update, id: @image_slider, image_slider: { alt_tag: @image_slider.alt_tag, caption: @image_slider.caption, image_link: @image_slider.image_link }
    assert_redirected_to image_slider_path(assigns(:image_slider))
  end

  test "should destroy image_slider" do
    assert_difference('ImageSlider.count', -1) do
      delete :destroy, id: @image_slider
    end

    assert_redirected_to image_sliders_path
  end
end
