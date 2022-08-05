# frozen_string_literal: true

class CountryLeaders
  attr_reader :country

  def initialize(country)
    @country = country
  end

  def call
    return error unless User::COUNTRY_CODES.include?(country)

    User.where(country: country).order(score: :desc).limit(100)
  end

  private

  def error
    { errors: ['wrong country code'] }
  end
end
