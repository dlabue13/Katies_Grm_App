class DeleteVetapptsController < ApplicationController
  # DELETE /grm_vetappts/1
  # DELETE /grm_vetappts/1.json
  def destroy
    @grm_vetappt = DeleteVetappt.find(params[:id])
    @grm_vetappt.destroy

    respond_to do |format|
      format.html { redirect_to grm_vetappts_url }
      format.json { head :no_content }
    end
  end
end
