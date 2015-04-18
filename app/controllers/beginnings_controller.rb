class BeginningsController < ApplicationController

  def index
    @beginnings = Beginning.all
  end

  def new
    @beginning = Beginning.new
  end

  def create
    @beginning = Beginning.new(beginning_params)
    if @beginning.save
      flash[:notice] = "A new beginning has been created."
      redirect_to beginnings_path
    else
      render :new
    end
  end

  def show
    @beginning = Beginning.find(params[:id])
  end

  def edit
    @beginning = Beginning.find params[:id]
  end

  def update
    @beginning = Beginning.find params[:id]
    if @beginning.update_attributes(beginning_params)
      flash[:notice] = "Beginning has been updated."
      redirect_to beginning_path(@beginning)
    else
      render :edit
    end

  end

  def destroy
    beginning = Beginning.find params[:id]
    beginning.destroy
    flash[:notice] = "The beginning '#{beginning}' has been deleted."
    redirect_to beginnings_path
  end

private

  def beginning_params
    params.require(:beginning).permit(:body)
  end

end
