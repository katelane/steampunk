class EndingsController < ApplicationController

  def index
    @endings = Ending.all
  end

  def new
    @ending = Ending.new
  end

  def create
    @ending = Ending.new(ending_params)
    if @ending.save
      flash[:notice] = "A new ending has been created."
      redirect_to endings_path
    else
      render :new
    end
  end

  def show
    @ending = Ending.find(params[:id])
  end

  def edit
    @ending = Ending.find params[:id]
  end

  def update
    @ending = Ending.find params[:id]
    if @ending.update_attributes(ending_params)
      flash[:notice] = "Ending has been updated."
      redirect_to ending_path(@ending)
    else
      render :edit
    end

  end

  def destroy
    ending = Ending.find params[:id]
    ending.destroy
    flash[:notice] = "The ending '#{ending}' has been deleted."
    redirect_to endings_path
  end

private

  def ending_params
    params.require(:ending).permit(:body)
  end

end
