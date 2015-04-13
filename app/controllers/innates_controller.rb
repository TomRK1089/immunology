class InnatesController < ApplicationController
  before_action :authenticate_user!

  def update
    @system = System.find(params[:system_id])
    @innate = Innate.find(@system)
    @innate.add_points("cytokine", @system)

    respond_to do |format|
      format.html { redirect_to system_innates_path(@innate), method: "get" }
      format.js {}
    end
  end
end
