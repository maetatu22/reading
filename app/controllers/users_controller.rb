class UsersController < ApplicationController
  def show
    @nickname = current_user.nickname
    @outputs = current_user.outputs
  end
end
