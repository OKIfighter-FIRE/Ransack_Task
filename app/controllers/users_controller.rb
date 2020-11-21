class UsersController < ApplicationController
  PER_PAGE = 20

  def index
    @q = User.ransack(params[:q])
    @users = @q.result.page(params[:page]).per(PER_PAGE)
    # @users = User.page(params[:page]).per(PER_PAGE)
    # @users = User.limit(20)
  end
end
