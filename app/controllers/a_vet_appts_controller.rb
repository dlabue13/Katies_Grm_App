class AVetApptsController < ApplicationController
  # GET /a_vet_appts
  # GET /a_vet_appts.json
  def index
    @a_vet_appts = AVetAppt.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @a_vet_appts }
    end
  end

  # GET /a_vet_appts/1
  # GET /a_vet_appts/1.json
  def show
    @a_vet_appt = AVetAppt.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @a_vet_appt }
    end
  end

  # GET /a_vet_appts/new
  # GET /a_vet_appts/new.json
  def new
    @a_vet_appt = AVetAppt.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @a_vet_appt }
    end
  end

  # GET /a_vet_appts/1/edit
  def edit
    @a_vet_appt = AVetAppt.find(params[:id])
  end

  # POST /a_vet_appts
  # POST /a_vet_appts.json
  def create
    @a_vet_appt = AVetAppt.new(params[:a_vet_appt])

    respond_to do |format|
      if @a_vet_appt.save
        format.html { redirect_to @a_vet_appt, notice: 'A vet appt was successfully created.' }
        format.json { render json: @a_vet_appt, status: :created, location: @a_vet_appt }
      else
        format.html { render action: "new" }
        format.json { render json: @a_vet_appt.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /a_vet_appts/1
  # PUT /a_vet_appts/1.json
  def update
    @a_vet_appt = AVetAppt.find(params[:id])

    respond_to do |format|
      if @a_vet_appt.update_attributes(params[:a_vet_appt])
        format.html { redirect_to @a_vet_appt, notice: 'A vet appt was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @a_vet_appt.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /a_vet_appts/1
  # DELETE /a_vet_appts/1.json
  def destroy
    @a_vet_appt = AVetAppt.find(params[:id])
    @a_vet_appt.destroy

    respond_to do |format|
      format.html { redirect_to a_vet_appts_url }
      format.json { head :no_content }
    end
  end
end
