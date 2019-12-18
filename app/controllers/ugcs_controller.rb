class UgcsController < ApplicationController
  def create
    @ugc = Ugc.create(ugcs_params)
    @ugc.user = current_user
    respond_to do |format|
      if @ugc.save
        format.html { redirect_to edit_user_registration_path, notice: 'Wardrobe updated!'}
      else
        format.html { render action: 'new' }
      end
    end
  end

  def destroy
    @ugc = Ugc.find(params[:id])
    @ugc.delete
    redirect_to edit_user_registration_path
  end

  private

  def ugcs_params
    params.require(:ugc).permit(:user_id, :brand, :title, :comment, :photo_url)
  end
end
