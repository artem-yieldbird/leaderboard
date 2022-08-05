# frozen_string_literal: true

class UserGenerator
  CHARSET = (Array('A'..'Z') + Array('a'..'z') + Array('0'..'9')).freeze
  DIVIDER = ', '

  def self.generate(n = nil)
    return user_string unless n

    n.times.map { user_string }.join(DIVIDER)
  end

  def self.user_string
    "('#{name}', '#{country}', #{score}, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP)"
  end

  private

  def self.country
    User::COUNTRY_CODES.sample
  end

  def self.name
    Array.new(rand(5..10)) { CHARSET.sample }.join
  end

  def self.score
    rand 150..150_000_000
  end
end
