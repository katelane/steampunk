class MiddlesController < ApplicationController

  def index
    @middles = Middle.all
  end

  def new
    @middle = Middle.new
  end

  def create
    @middle = Middle.new(middle_params)
    if @middle.save
      flash[:notice] = "A new middle has been created."
      redirect_to middles_path
    else
      render :new
    end
  end

  def show
    @middle = Middle.find(params[:id])
  end

  def edit
    @middle = Middle.find params[:id]
  end

  def update
    @middle = Middle.find params[:id]
    if @middle.update_attributes(middle_params)
      flash[:notice] = "Middle has been updated."
      redirect_to middle_path(@middle)
    else
      render :edit
    end

  end

  def destroy
    middle = Middle.find params[:id]
    middle.destroy
    flash[:notice] = "The middle '#{middle}' has been deleted."
    redirect_to middles_path
  end

private

  def middle_params
    params.require(:middle).permit(:body)
  end

end
