class FitRecsJob < ApplicationJob
  queue_as :default

  def perform(*args)
    @recommender = Disco::Recommender.new(factors: 8)
    puts "perform worked"
    fit_recs
    save_recs
  end

  private

  def fit_recs
    puts "fitted recs"
    data = ProductRec.all
    @recommender.fit(data)
    # returns an array of arrays of probabilities
  end

  def save_recs
    User.find_each do |user|
      recs = @recommender.user_recs(user.id)
      user.update_recommended_products(recs)
      # returns array of hashes per user that has item id and score
      puts "saved recs"
    end
  end
end
