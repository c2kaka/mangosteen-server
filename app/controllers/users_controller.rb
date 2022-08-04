class UsersController < ApplicationController
  def create
    user = User.new email: "fan@qq.com", name: "fan"
    if user.save
      render json: user
    else
      render json: user.errors
    end
  end

  def show
    # you can use find_by_xxx， because of meta programming in Ruby
    user = User.find_by_id params[:id]
    if user
      render json: user
    else
      head 404
    end
  end
end
