class PuntsController < ApplicationController
  # GET /punts
  # GET /punts.json
  def index
    @punts = Punt.all
    @punt_long = Punt.maximum('distance')
    @punt_toal = Punt.sum('distance').round(1)
    @punt_count = Punt.count('distance').round(1)
    @punt_average = (@punt_toal / @punt_count).round(1)
    @hangtime_long = Punt.maximum('hangtime')
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @punts }
    end
  end

  # GET /punts/1
  # GET /punts/1.json
  def show
    @punt = Punt.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @punt }
    end
  end
  # GET /punts/new
  # GET /punts/new.json
  def new
    @punt = Punt.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @punt }
    end
  end

  # GET /punts/1/edit
  def edit
    @punt = Punt.find(params[:id])
  end

  # POST /punts
  # POST /punts.json
  def create
    @punt = Punt.new(params[:punt])

    respond_to do |format|
      if @punt.save
        format.html { redirect_to @punt, notice: 'Punt was successfully created.' }
        format.json { render json: @punt, status: :created, location: @punt }
      else
        format.html { render action: "new" }
        format.json { render json: @punt.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /punts/1
  # PUT /punts/1.json
  def update
    @punt = Punt.find(params[:id])

    respond_to do |format|
      if @punt.update_attributes(params[:punt])
        format.html { redirect_to @punt, notice: 'Punt was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @punt.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /punts/1
  # DELETE /punts/1.json
  def destroy
    @punt = Punt.find(params[:id])
    @punt.destroy

    respond_to do |format|
      format.html { redirect_to punts_url }
      format.json { head :no_content }
    end
  end
end
