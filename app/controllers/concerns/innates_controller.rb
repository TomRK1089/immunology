class InnatesController < ApplicationController
  def index
    @innate = Innate.find_by(system: params[:id])
  end
end
