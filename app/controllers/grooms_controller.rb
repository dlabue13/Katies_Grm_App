class GroomsController < ApplicationController
  # GET /grooms
  # GET /grooms.json
  def index
    @grooms = Groom.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @grooms }
    end
  end

  # GET /grooms/1
  # GET /grooms/1.json
  def show
    @groom = Groom.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @groom }
    end
  end

  # GET /grooms/new
  # GET /grooms/new.json
  def new
    @groom = Groom.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @groom }
    end
  end

  # GET /grooms/1/edit
  def edit
    @groom = Groom.find(params[:id])
  end

  # POST /grooms
  # POST /grooms.json
  def create
    @groom = Groom.new(params[:groom])

    respond_to do |format|
      if @groom.save
        format.html { redirect_to @groom, notice: 'Groom was successfully created.' }
        format.json { render json: @groom, status: :created, location: @groom }
      else
        format.html { render action: "new" }
        format.json { render json: @groom.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /grooms/1
  # PUT /grooms/1.json
  def update
    @groom = Groom.find(params[:id])

    respond_to do |format|
      if @groom.update_attributes(params[:groom])
        format.html { redirect_to @groom, notice: 'Groom was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @groom.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /grooms/1
  # DELETE /grooms/1.json
  def destroy
    @groom = Groom.find(params[:id])
    @groom.destroy

    respond_to do |format|
      format.html { redirect_to grooms_url }
      format.json { head :no_content }
    end
  end
end
