class GrmUsersController < ApplicationController
  # GET /grm_users
  # GET /grm_users.json
  def index
    @grm_users = GrmUser.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @grm_users }
    end
  end

  # GET /grm_users/1
  # GET /grm_users/1.json
  def show
    @grm_user = GrmUser.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @grm_user }
    end
  end

  # GET /grm_users/new
  # GET /grm_users/new.json
  def new
    @grm_user = GrmUser.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @grm_user }
    end
  end

  # GET /grm_users/1/edit
  def edit
    @grm_user = GrmUser.find(params[:id])
  end

  # POST /grm_users
  # POST /grm_users.json
  def create
    @grm_user = GrmUser.new(params[:grm_user])

    respond_to do |format|
      if @grm_user.save
        format.html { redirect_to @grm_user, notice: 'Grm user was successfully created.' }
        format.json { render json: @grm_user, status: :created, location: @grm_user }
      else
        format.html { render action: "new" }
        format.json { render json: @grm_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /grm_users/1
  # PUT /grm_users/1.json
  def update
    @grm_user = GrmUser.find(params[:id])

    respond_to do |format|
      if @grm_user.update_attributes(params[:grm_user])
        format.html { redirect_to @grm_user, notice: 'Grm user was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @grm_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /grm_users/1
  # DELETE /grm_users/1.json
  def destroy
    @grm_user = GrmUser.find(params[:id])
    @grm_user.destroy

    respond_to do |format|
      format.html { redirect_to grm_users_url }
      format.json { head :no_content }
    end
  end
end
