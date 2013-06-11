class GrmGrapptsController < ApplicationController
  # GET /grm_grappts
  # GET /grm_grappts.json
  def index
    @grm_grappts = GrmGrappt.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @grm_grappts }
    end
  end

  # GET /grm_grappts/1
  # GET /grm_grappts/1.json
  def show
    @grm_grappt = GrmGrappt.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @grm_grappt }
    end
  end

  # GET /grm_grappts/new
  # GET /grm_grappts/new.json
  def new
    @grm_grappt = GrmGrappt.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @grm_grappt }
    end
  end

  # GET /grm_grappts/1/edit
  def edit
    @grm_grappt = GrmGrappt.find(params[:id])
  end

  # POST /grm_grappts
  # POST /grm_grappts.json
  def create
    @grm_grappt = GrmGrappt.new(params[:grm_grappt])

    respond_to do |format|
      if @grm_grappt.save
        format.html { redirect_to @grm_grappt, notice: 'Grooming appointment was successfully created.' }
        format.json { render json: @grm_grappt, status: :created, location: @grm_grappt }
      else
        format.html { render action: "new" }
        format.json { render json: @grm_grappt.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /grm_grappts/1
  # PUT /grm_grappts/1.json
  def update
    @grm_grappt = GrmGrappt.find(params[:id])

    respond_to do |format|
      if @grm_grappt.update_attributes(params[:grm_grappt])
        format.html { redirect_to @grm_grappt, notice: 'Grooming appointment was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @grm_grappt.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /grm_grappts/1
  # DELETE /grm_grappts/1.json
  def destroy
    @grm_grappt = GrmGrappt.find(params[:id])
    @grm_grappt.destroy

    respond_to do |format|
      format.html { redirect_to grm_grappts_url }
      format.json { head :no_content }
    end
  end
end
