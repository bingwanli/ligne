class FitRecsJob < ApplicationJob
  queue_as :default

  def perform(*args)
    generate_recs
    puts "perform worked"
  end

  private

  def generate_recs
    users = User.all
    users.each do |user|
      Recommendable::Helpers::Calculations.update_similarities_for(user)
      Recommendable::Helpers::Calculations.update_recommendations_for(user)
    end
  end
end
