class SystemsController < ApplicationController
  before_action :authenticate_user!

  def index
    @cells = Cell.all
    @system = System.find_by(user: current_user)
    @viri = Virus.all
    @innate = Innate.find(@system)
  end

  def new
    @system = System.new
  end

  def create
    @system = System.new
    @system.user_id = current_user.id
    if @system.save
      100.times do
        Cell.create(system: @system)
      end
      100.times do
        Virus.create(system: @system)
      end
      Innate.create(system: @system)
      flash[:notice] = "this one's name is
      #{Faker::Name.first_name}. keep it safe. good luck."
      redirect_to systems_path
    else
      render :new
    end
  end

  def destroy
      @system = System.find(params[:id])
      @system.destroy
      flash[:notice] = 'disease is immunodeficient. system shut down'
      redirect_to "/"
  end
end
