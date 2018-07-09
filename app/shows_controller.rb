def highest_rating
  Show.where("number_of_stars > ?", 10)
end

def most_popular_show
  Show.where("number_of_stars > ?", 10)
end

def lowest_rating
  Show.minimum(:number_of_stars)
end

def least_popular_show
end

def ratings_sum
  Show.sum(:number_of_stars)
end

def popular_shows
  Show.where("number_of_stars > ?", 5)
end

def shows_by_alphabetical_order
end
