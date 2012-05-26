class Admin::ManagersController < ApplicationController
  before_filter :admin_user, only: [:index]
  layout "admin"

  def index

  end
end
