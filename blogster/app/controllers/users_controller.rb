# USER CONTROLLER
# SHOW PAGE ONLY
class UsersController < ApplicationController
  before_action :find_user

  def show; end

  private

  def find_user
    @user = User.find(params[:id])
  end
end