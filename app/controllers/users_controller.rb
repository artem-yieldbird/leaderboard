# frozen_string_literal: true

class UsersController < ApplicationController
  before_action :leaders

  def show
    render json: leaders
  end

  private

  def leaders
    @leaders ||= Leaders.new(user_params[:country]).call
  end

  def user_params
    params.permit(:country)
  end
end
