class BiosController < ApplicationController
  # GET /bios
  # GET /bios.json
  def index
    @bios = Bio.all

    @awards = Award.order('date DESC')
    @references = Reference.all
    @field_goals = FieldGoal.all
    @total_field_goals = FieldGoal.count(:conditions => { :is_good => true }) * 3
    @field_goal_long = FieldGoal.maximum('distance', :conditions => {:is_good => true})

    @field_goal_count = FieldGoal.count('is_good')
    @field_goals_made = FieldGoal.count(:conditions => { :is_good => true })
    @field_goal_percent = (@field_goals_made.to_f / @field_goal_count.to_f * 100).round(1)


    @point_after_attempts = PointAfterAttempt.all
    @total_pats = PointAfterAttempt.count(:conditions => { :is_good => true })

    @kickoffs = Kickoff.all
    @total_kickoff_yards = Kickoff.sum('distance')
    @kickoff_long = Kickoff.maximum('distance')
    @total_kicks = Kickoff.count('distance')
    @touchback_totals = Kickoff.count(:conditions => "distance > 60")
    @touchback_percentage = (@touchback_totals.to_f / @total_kicks.to_f * 100).round(1)

    @kickoff_avg = Integer(Kickoff.average('distance'))


    @punts = Punt.all
    @punt_long = Punt.maximum('distance')

    @total_points = Integer(@total_field_goals.to_f + @total_pats.to_f)
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @bios }
    end
  end

  # GET /bios/1
  # GET /bios/1.json
  def show
    @bio = Bio.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @bio }
    end
  end

  # GET /bios/new
  # GET /bios/new.json
  def new
    @bio = Bio.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @bio }
    end
  end

  # GET /bios/1/edit
  def edit
    @bio = Bio.find(params[:id])
  end

  # POST /bios
  # POST /bios.json
  def create
    @bio = Bio.new(params[:bio])

    respond_to do |format|
      if @bio.save
        format.html { redirect_to @bio, notice: 'Bio was successfully created.' }
        format.json { render json: @bio, status: :created, location: @bio }
      else
        format.html { render action: "new" }
        format.json { render json: @bio.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /bios/1
  # PUT /bios/1.json
  def update
    @bio = Bio.find(params[:id])

    respond_to do |format|
      if @bio.update_attributes(params[:bio])
        format.html { redirect_to @bio, notice: 'Bio was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @bio.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bios/1
  # DELETE /bios/1.json
  def destroy
    @bio = Bio.find(params[:id])
    @bio.destroy

    respond_to do |format|
      format.html { redirect_to bios_url }
      format.json { head :no_content }
    end
  end
end
