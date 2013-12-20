class CollegeWishListsController < ApplicationController
  # GET /college_wish_lists
  # GET /college_wish_lists.json
  def index
    @college_wish_lists = CollegeWishList.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @college_wish_lists }
    end
  end

  # GET /college_wish_lists/1
  # GET /college_wish_lists/1.json
  def show
    @college_wish_list = CollegeWishList.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @college_wish_list }
    end
  end

  # GET /college_wish_lists/new
  # GET /college_wish_lists/new.json
  def new
    @college_wish_list = CollegeWishList.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @college_wish_list }
    end
  end

  # GET /college_wish_lists/1/edit
  def edit
    @college_wish_list = CollegeWishList.find(params[:id])
  end

  # POST /college_wish_lists
  # POST /college_wish_lists.json
  def create
    @college_wish_list = CollegeWishList.new(params[:college_wish_list])

    respond_to do |format|
      if @college_wish_list.save
        format.html { redirect_to @college_wish_list, notice: 'College wish list was successfully created.' }
        format.json { render json: @college_wish_list, status: :created, location: @college_wish_list }
      else
        format.html { render action: "new" }
        format.json { render json: @college_wish_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /college_wish_lists/1
  # PUT /college_wish_lists/1.json
  def update
    @college_wish_list = CollegeWishList.find(params[:id])

    respond_to do |format|
      if @college_wish_list.update_attributes(params[:college_wish_list])
        format.html { redirect_to @college_wish_list, notice: 'College wish list was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @college_wish_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /college_wish_lists/1
  # DELETE /college_wish_lists/1.json
  def destroy
    @college_wish_list = CollegeWishList.find(params[:id])
    @college_wish_list.destroy

    respond_to do |format|
      format.html { redirect_to college_wish_lists_url }
      format.json { head :no_content }
    end
  end
end
