class Admin::ManagersUsersController < ApplicationController
  before_filter :admin_user, only: [:index,:destroy]
  layout "admin"

  def index
    @users= User.paginate(page: params[:page])
  end

  def destroy
    User.find(params[:id]).destroy
    flash[:success]='User destroy'
    redirect_to admin_users_path
  end
end
