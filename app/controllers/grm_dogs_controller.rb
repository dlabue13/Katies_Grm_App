class GrmDogsController < ApplicationController
  # GET /grm_dogs
  # GET /grm_dogs.json
  def index
    @grm_dogs = GrmDog.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @grm_dogs }
    end
  end

  # GET /grm_dogs/1
  # GET /grm_dogs/1.json
  def show
    @grm_dog = GrmDog.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @grm_dog }
    end
  end

  # GET /grm_dogs/new
  # GET /grm_dogs/new.json
  def new
    @grm_dog = GrmDog.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @grm_dog }
    end
  end

  # GET /grm_dogs/1/edit
  def edit
    @grm_dog = GrmDog.find(params[:id])
  end

  # POST /grm_dogs
  # POST /grm_dogs.json
  def create
    @grm_dog = GrmDog.new(params[:grm_dog])

    respond_to do |format|
      if @grm_dog.save
        format.html { redirect_to @grm_dog, notice: 'Grm dog was successfully created.' }
        format.json { render json: @grm_dog, status: :created, location: @grm_dog }
      else
        format.html { render action: "new" }
        format.json { render json: @grm_dog.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /grm_dogs/1
  # PUT /grm_dogs/1.json
  def update
    @grm_dog = GrmDog.find(params[:id])

    respond_to do |format|
      if @grm_dog.update_attributes(params[:grm_dog])
        format.html { redirect_to @grm_dog, notice: 'Grm dog was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @grm_dog.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /grm_dogs/1
  # DELETE /grm_dogs/1.json
  def destroy
    @grm_dog = GrmDog.find(params[:id])
    @grm_dog.destroy

    respond_to do |format|
      format.html { redirect_to grm_dogs_url }
      format.json { head :no_content }
    end
  end
end
