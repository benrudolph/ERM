class RisksController < ApplicationController
  def index
    @risks = Risk.all
    render :index
  end

  def show
    render :show
  end

  def edit
    render :edit
  end

  def new
    @risk = Risk.new
    1.times { @risk.risk_details.build }
    render :new
  end

  def create
    @risk = Risk.create params[:risk]

    render :show
  end
end
