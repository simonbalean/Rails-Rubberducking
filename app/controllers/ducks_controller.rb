class DucksController < ApplicationController

  def index
    # if params[:search]
    #   @ducks = Duck.search(params[:search])
    # else
      @ducks = Duck.all
    # end
  end

  def show
    @duck = Duck.find(params[:id])
    # render :show
  end

  def new
    @duck = Duck.new
    # render :new
  end

  def create
    @duck = Duck.create(duck_params)
    redirect_to new_duck_path
  end

  def edit
    @duck = Duck.find(params[:id])
    # render :edit
  end

  def update
    @duck = Duck.find(params[:id])
    @duck.update(duck_params)
    redirect_to @duck
  end

  def destroy
    @duck = Duck.find(params[:id])
    @duck.destroy
    redirect_to ducks_path
  end

  private
  def duck_params
    params.require(:duck).permit(:name, :description)
  end

end
