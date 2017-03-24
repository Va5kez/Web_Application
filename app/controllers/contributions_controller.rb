class ContributionsController < ApplicationController
  def new
  end

  def create
  end

  def edit
  end

  def destroy
  end

  def show
    @contribution = Contribution.find(params[:id])
  end

  def index
    @contribution = Contribution.all
  end
end
