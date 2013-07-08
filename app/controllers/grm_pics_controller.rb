class GrmPicsController < ApplicationController
  # GET /grm_pics
  # GET /grm_pics.json
  def index
    @grm_pics = GrmPic.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @grm_pics }
    end
  end

  # GET /grm_pics/1
  # GET /grm_pics/1.json
  def show
    @grm_pic = GrmPic.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @grm_pic }
    end
  end

  # GET /grm_pics/new
  # GET /grm_pics/new.json
  def new
    @grm_pic = GrmPic.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @grm_pic }
    end
  end

  # GET /grm_pics/1/edit
  def edit
    @grm_pic = GrmPic.find(params[:id])
  end

  # POST /grm_pics
  # POST /grm_pics.json
  def create
    @grm_pic = GrmPic.new(params[:grm_pic])

    respond_to do |format|
      if @grm_pic.save
        format.html { redirect_to @grm_pic, notice: 'Grm pic was successfully created.' }
        format.xml { render json: @grm_pic, status: :created, location: @grm_pic }
        format.js
      else
        format.html { render action: "new" }
        format.json { render json: @grm_pic.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /grm_pics/1
  # PUT /grm_pics/1.json
  def update
    @grm_pic = GrmPic.find(params[:id])

    respond_to do |format|
      if @grm_pic.update_attributes(params[:grm_pic])
        format.html { redirect_to @grm_pic, notice: 'Grm pic was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @grm_pic.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /grm_pics/1
  # DELETE /grm_pics/1.json
  def destroy
    @grm_pic = GrmPic.find(params[:id])
    @grm_pic.destroy

    respond_to do |format|
      format.html { redirect_to grm_pics_url }
      format.json { head :no_content }
    end
  end
end
