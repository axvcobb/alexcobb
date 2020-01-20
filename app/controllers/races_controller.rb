class RacesController < ApplicationController

  skip_before_action :authorized, only: [:index]

  def index
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
