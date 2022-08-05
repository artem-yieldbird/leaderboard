namespace :users do
  desc "Start UpdateRandomUserJob"
  task start_update_random_user_job: :environment do
    ::UpdateRandomUserJob.perform_async
  end
end
