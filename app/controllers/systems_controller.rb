class SystemsController < ApplicationController
  before_action :authenticate_user!

  def index
    @cells = Cell.all
    @system = system
    @viruses = Virus.all
  end
end
