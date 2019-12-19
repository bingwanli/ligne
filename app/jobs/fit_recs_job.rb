class FitRecsJob < ApplicationJob
  queue_as :default

  def perform(*args)
    generate_recs
    puts "perform worked"
  end

  private

  def generate_recs
    users = User.all
    Recommendable::Helpers::RedisKeyMapper.score_set_for(Product)
    users.each do |user|
      Recommendable::Helpers::RedisKeyMapper.similarity_set_for(user.id)
      Recommendable::Helpers::Calculations.update_similarities_for(user.id)
      Recommendable::Helpers::Calculations.update_recommendations_for(user.id)
    end
  end
end
