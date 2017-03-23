class SavingsController < ApplicationController
  def new
    @saving = Saving.new
  end

  def create
  end

  def edit
  end

  def destroy
  end

  def show
    @saving = Saving.find(params[:id])
  end

  def index
    @savings = Saving.all
  end
end
