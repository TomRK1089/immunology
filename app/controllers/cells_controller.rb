class CellsController < ApplicationController
  def new
    @cell = Cell.new
  end

  def create
    @cell = Cell.new(cell_params)
    if @cell.save
      flash[:notice] = 'cell created'
      redirect_to '/system'
    else
      flash[:notice] = 'cell not created.'
      render :new
    end
  end
end
