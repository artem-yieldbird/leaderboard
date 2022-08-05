# frozen_string_literal: true

class UpdateRandomUser < ApplicationJob
  queue_as :default

  def perform
    while true do
      sleep 1
      user = User.order("RANDOM()").first
      user&.update score: rand(150..1_000_000)
    end
  end
end
