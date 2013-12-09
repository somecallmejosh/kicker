class FieldGoalsController < ApplicationController
  # GET /field_goals
  # GET /field_goals.json
  def index
    @field_goals = FieldGoal.all
    @totalpoints = FieldGoal.count(:conditions => { :is_good => true }) * 3
    @max_distance = FieldGoal.maximum('distance', :conditions => {:is_good => true})
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @field_goals }
    end
  end

  # GET /field_goals/1
  # GET /field_goals/1.json
  def show
    @field_goal = FieldGoal.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @field_goal }
    end
  end

  # GET /field_goals/new
  # GET /field_goals/new.json
  def new
    @field_goal = FieldGoal.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @field_goal }
    end
  end

  # GET /field_goals/1/edit
  def edit
    @field_goal = FieldGoal.find(params[:id])
  end

  # POST /field_goals
  # POST /field_goals.json
  def create
    @field_goal = FieldGoal.new(params[:field_goal])

    respond_to do |format|
      if @field_goal.save
        format.html { redirect_to @field_goal, notice: 'Field goal was successfully created.' }
        format.json { render json: @field_goal, status: :created, location: @field_goal }
      else
        format.html { render action: "new" }
        format.json { render json: @field_goal.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /field_goals/1
  # PUT /field_goals/1.json
  def update
    @field_goal = FieldGoal.find(params[:id])

    respond_to do |format|
      if @field_goal.update_attributes(params[:field_goal])
        format.html { redirect_to @field_goal, notice: 'Field goal was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @field_goal.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /field_goals/1
  # DELETE /field_goals/1.json
  def destroy
    @field_goal = FieldGoal.find(params[:id])
    @field_goal.destroy

    respond_to do |format|
      format.html { redirect_to field_goals_url }
      format.json { head :no_content }
    end
  end
end
