class GrmVetapptsController < ApplicationController
  # GET /grm_vetappts
  # GET /grm_vetappts.json
  def index
    @grm_vetappts = GrmVetappt.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @grm_vetappts }
    end
  end

  # GET /grm_vetappts/1
  # GET /grm_vetappts/1.json
  def show
    @grm_vetappt = GrmVetappt.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @grm_vetappt }
    end
  end

  # GET /grm_vetappts/new
  # GET /grm_vetappts/new.json
  def new
    @grm_vetappt = GrmVetappt.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @grm_vetappt }
    end
  end

  # GET /grm_vetappts/1/edit
  def edit
    @grm_vetappt = GrmVetappt.find(params[:id])
  end

  # POST /grm_vetappts
  # POST /grm_vetappts.json
  def create
    @grm_vetappt = GrmVetappt.new(params[:grm_vetappt])

    respond_to do |format|
      if @grm_vetappt.save
        format.html { redirect_to @grm_vetappt, notice: 'Vet appointment was successfully created.' }
        format.json { render json: @grm_vetappt, status: :created, location: @grm_vetappt }
      else
        format.html { render action: "new" }
        format.json { render json: @grm_vetappt.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /grm_vetappts/1
  # PUT /grm_vetappts/1.json
  def update
    @grm_vetappt = GrmVetappt.find(params[:id])

    respond_to do |format|
      if @grm_vetappt.update_attributes(params[:grm_vetappt])
        format.html { redirect_to @grm_vetappt, notice: 'Vet appointment was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @grm_vetappt.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /grm_vetappts/1
  # DELETE /grm_vetappts/1.json
  def destroy
    @grm_vetappt = GrmVetappt.find(params[:id])
    @grm_vetappt.destroy

    respond_to do |format|
      format.html { redirect_to grm_vetappts_url }
      format.json { head :no_content }
    end
  end
end
