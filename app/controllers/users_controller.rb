class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
  end

  def email
    self[:email] ?  self[:email] : 'email not set'
  end

end
