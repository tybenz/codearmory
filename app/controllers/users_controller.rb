class UsersController < ApplicationController
  def register
    auth = request.env['omniauth.auth']
    user_info = auth[:info]
    token = auth[:credentials][:token]
    local_user = User.find_by_username(user_info[:nickname])
    if local_user
      sign_in local_user
      redirect_to :back
    else
      @user = User.new :username => user_info[:nickname], :token => token
    end
  end
end
