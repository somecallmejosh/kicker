class KickoffsController < ApplicationController
  # GET /kickoffs
  # GET /kickoffs.json
  def index
    @kickoffs = Kickoff.all
    @total_yards = Kickoff.sum('distance')
    @kickoff_long = Kickoff.maximum('distance')
    @hangtime_long = Kickoff.maximum('hangtime')
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @kickoffs }
    end
  end

  # GET /kickoffs/1
  # GET /kickoffs/1.json
  def show
    @kickoff = Kickoff.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @kickoff }
    end
  end

  # GET /kickoffs/new
  # GET /kickoffs/new.json
  def new
    @kickoff = Kickoff.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @kickoff }
    end
  end

  # GET /kickoffs/1/edit
  def edit
    @kickoff = Kickoff.find(params[:id])
  end

  # POST /kickoffs
  # POST /kickoffs.json
  def create
    @kickoff = Kickoff.new(params[:kickoff])

    respond_to do |format|
      if @kickoff.save
        format.html { redirect_to @kickoff, notice: 'Kickoff was successfully created.' }
        format.json { render json: @kickoff, status: :created, location: @kickoff }
      else
        format.html { render action: "new" }
        format.json { render json: @kickoff.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /kickoffs/1
  # PUT /kickoffs/1.json
  def update
    @kickoff = Kickoff.find(params[:id])

    respond_to do |format|
      if @kickoff.update_attributes(params[:kickoff])
        format.html { redirect_to @kickoff, notice: 'Kickoff was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @kickoff.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /kickoffs/1
  # DELETE /kickoffs/1.json
  def destroy
    @kickoff = Kickoff.find(params[:id])
    @kickoff.destroy

    respond_to do |format|
      format.html { redirect_to kickoffs_url }
      format.json { head :no_content }
    end
  end
end
