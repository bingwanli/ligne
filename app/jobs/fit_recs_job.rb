class FitRecsJob < ApplicationJob
  queue_as :default

  def perform(*args)
    # @recommender = Disco::Recommender.new(factors: 8)
    fit_recs
    save_recs
    puts "perform worked"
  end

  private

  def convert_data
    data = []
    object_data = ProductRec.all
    object_data.each do |h|
      data << {
        user_id: h["user_id"],
        item_id: h["product_id"],
        rating: h["rating"]
      }
    end
    data
  end

  def fit_recs
    data = convert_data
    # @recommender.fit(data)
    # returns an array of arrays of probabilities
    puts "fitted recs"
  end

  def save_recs
    User.find_each do |user|
      # recs = @recommender.user_recs(user.id)
      user.update_recommended_products(recs)
      # returns array of hashes per user that has item id and score
      puts "saved recs"
    end
  end
end
