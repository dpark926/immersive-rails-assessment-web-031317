class AppearancesController < ApplicationController
  def new
    @appearance = Appearance.new
  end

  def create
    @appearance = Appearance.new(appearance_params)
    @appearance.save
    redirect_to appearance_path(@appearance)
  end

  private

  def appearance_params
    params_require(:appearance).permit(:episode_id, :guest_id, :rating)
  end
end
