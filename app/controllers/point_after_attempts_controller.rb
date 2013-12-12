class PointAfterAttemptsController < ApplicationController
  # GET /point_after_attempts
  # GET /point_after_attempts.json
  def index
    @point_after_attempts = PointAfterAttempt.all
    @totalpoints = PointAfterAttempt.count(:conditions => { :is_good => true })
    @totalkicks = PointAfterAttempt.count('is_good')
    @pat_percent = (@totalpoints.to_f / @totalkicks.to_f * 100).round(1)

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @point_after_attempts }
    end
  end

  # GET /point_after_attempts/1
  # GET /point_after_attempts/1.json
  def show
    @point_after_attempt = PointAfterAttempt.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @point_after_attempt }
    end
  end

  # GET /point_after_attempts/new
  # GET /point_after_attempts/new.json
  def new
    @point_after_attempt = PointAfterAttempt.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @point_after_attempt }
    end
  end

  # GET /point_after_attempts/1/edit
  def edit
    @point_after_attempt = PointAfterAttempt.find(params[:id])
  end

  # POST /point_after_attempts
  # POST /point_after_attempts.json
  def create
    @point_after_attempt = PointAfterAttempt.new(params[:point_after_attempt])

    respond_to do |format|
      if @point_after_attempt.save
        format.html { redirect_to @point_after_attempt, notice: 'Point after attempt was successfully created.' }
        format.json { render json: @point_after_attempt, status: :created, location: @point_after_attempt }
      else
        format.html { render action: "new" }
        format.json { render json: @point_after_attempt.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /point_after_attempts/1
  # PUT /point_after_attempts/1.json
  def update
    @point_after_attempt = PointAfterAttempt.find(params[:id])

    respond_to do |format|
      if @point_after_attempt.update_attributes(params[:point_after_attempt])
        format.html { redirect_to @point_after_attempt, notice: 'Point after attempt was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @point_after_attempt.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /point_after_attempts/1
  # DELETE /point_after_attempts/1.json
  def destroy
    @point_after_attempt = PointAfterAttempt.find(params[:id])
    @point_after_attempt.destroy

    respond_to do |format|
      format.html { redirect_to point_after_attempts_url }
      format.json { head :no_content }
    end
  end
end
