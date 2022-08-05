# frozen_string_literal: true

class UsersController < ApplicationController
  def world_leaders
    render json: User.order(score: :desc).limit(100)
  end

  def country_leaders
    render json: CountryLeaders.new(user_params[:country]).call
  end

  private

  def user_params
    params.permit(:country)
  end
end
