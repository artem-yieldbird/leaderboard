# frozen_string_literal: true

class Leaders
  attr_reader :country

  def initialize(country)
    @country = country
  end

  def call
    return world_leaders if country.nil?

    return country_leaders if valid_country?

    error
  end

  private

  def world_leaders
    User.order(score: :desc).limit(100)
  end

  def country_leaders
    User.where(country: country).order(score: :desc).limit(100)
  end

  def valid_country?
    User::COUNTRY_CODES.include?(country)
  end

  def error
    { errors: ['wrong country code'] }
  end
end
