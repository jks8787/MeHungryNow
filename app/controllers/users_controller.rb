class UsersController < ApplicationController
  def fit_goals
  end

  def update
    user = User.find(current_user.id)
    goal_type_for_user = params[:fit_goal]
    user.goal_type = goal_type_for_user
    render json: @user
  end

end