class AuthorSessionsController < ApplicationController
  def new
  end

  def create
    if login(params[:email], params[:password])
      redirect_back_or_to(root_path, notice: 'Login successful.')
    else
      flash[:notice] = "Login failed."
      render action: :new
    end
  end

  def destroy
    logout
    redirect_to(:root, notice: 'Logged out!')
  end
end
