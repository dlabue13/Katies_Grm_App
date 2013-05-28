class GrmStylistsController < ApplicationController
  # GET /grm_stylists
  # GET /grm_stylists.json
  def index
    @grm_stylists = GrmStylist.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @grm_stylists }
    end
  end

  # GET /grm_stylists/1
  # GET /grm_stylists/1.json
  def show
    @grm_stylist = GrmStylist.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @grm_stylist }
    end
  end

  # GET /grm_stylists/new
  # GET /grm_stylists/new.json
  def new
    @grm_stylist = GrmStylist.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @grm_stylist }
    end
  end

  # GET /grm_stylists/1/edit
  def edit
    @grm_stylist = GrmStylist.find(params[:id])
  end

  # POST /grm_stylists
  # POST /grm_stylists.json
  def create
    @grm_stylist = GrmStylist.new(params[:grm_stylist])

    respond_to do |format|
      if @grm_stylist.save
        format.html { redirect_to @grm_stylist, notice: 'Grm stylist was successfully created.' }
        format.json { render json: @grm_stylist, status: :created, location: @grm_stylist }
      else
        format.html { render action: "new" }
        format.json { render json: @grm_stylist.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /grm_stylists/1
  # PUT /grm_stylists/1.json
  def update
    @grm_stylist = GrmStylist.find(params[:id])

    respond_to do |format|
      if @grm_stylist.update_attributes(params[:grm_stylist])
        format.html { redirect_to @grm_stylist, notice: 'Grm stylist was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @grm_stylist.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /grm_stylists/1
  # DELETE /grm_stylists/1.json
  def destroy
    @grm_stylist = GrmStylist.find(params[:id])
    @grm_stylist.destroy

    respond_to do |format|
      format.html { redirect_to grm_stylists_url }
      format.json { head :no_content }
    end
  end
end
