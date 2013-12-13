class ImageSlidersController < ApplicationController
  # GET /image_sliders
  # GET /image_sliders.json
  def index
    @image_sliders = ImageSlider.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @image_sliders }
    end
  end

  # GET /image_sliders/1
  # GET /image_sliders/1.json
  def show
    @image_slider = ImageSlider.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @image_slider }
    end
  end

  # GET /image_sliders/new
  # GET /image_sliders/new.json
  def new
    @image_slider = ImageSlider.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @image_slider }
    end
  end

  # GET /image_sliders/1/edit
  def edit
    @image_slider = ImageSlider.find(params[:id])
  end

  # POST /image_sliders
  # POST /image_sliders.json
  def create
    @image_slider = ImageSlider.new(params[:image_slider])

    respond_to do |format|
      if @image_slider.save
        format.html { redirect_to @image_slider, notice: 'Image slider was successfully created.' }
        format.json { render json: @image_slider, status: :created, location: @image_slider }
      else
        format.html { render action: "new" }
        format.json { render json: @image_slider.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /image_sliders/1
  # PUT /image_sliders/1.json
  def update
    @image_slider = ImageSlider.find(params[:id])

    respond_to do |format|
      if @image_slider.update_attributes(params[:image_slider])
        format.html { redirect_to @image_slider, notice: 'Image slider was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @image_slider.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /image_sliders/1
  # DELETE /image_sliders/1.json
  def destroy
    @image_slider = ImageSlider.find(params[:id])
    @image_slider.destroy

    respond_to do |format|
      format.html { redirect_to image_sliders_url }
      format.json { head :no_content }
    end
  end
end
