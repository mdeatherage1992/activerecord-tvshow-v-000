class Show < ActiveRecord::Base
  def self.highest_rating
    Show.maximum(:rating)
  end

  def self.most_popular_show
    Show.where("rating > ?", 10)
  end

  def self.lowest_rating
    Show.minimum(:rating)
  end

  def self.least_popular_show
    Show.minimum(:rating)
  end

  def self.ratings_sum
    Show.sum(:number_of_stars)
  end

  def self.popular_shows
    Show.where("number_of_stars > ?", 5)
  end

  def self.shows_by_alphabetical_order
    Show.order(:name)
  end
end
