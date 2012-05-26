class SessionsController < ApplicationController

  before_filter  :signed_in_to_root,only: [:new]

  def new

  end
  def create
    user=User.find_by_email(params[:session][:email])
    if user && user.authenticate(params[:session][:password])
      flash[:success]='Successful'
      sign_in user
      redirect_back_or root_path
    else
      flash[:error]="Invalid email/password combination"
      render 'new'
    end
  end
  def destroy
    sign_out
    redirect_to root_path
  end
end
