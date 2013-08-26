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