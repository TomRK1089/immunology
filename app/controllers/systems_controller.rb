class SystemsController < ApplicationController
  before_action :authenticate_user!

  def index
    @cells = Cell.all
    @system = System.find_by(id: 1)
    @viri = Virus.all
  end
end
