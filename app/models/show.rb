class Show < ActiveRecord::Base

    def self.highest_rating
        Show.maximum("rating")
    end

    def self.most_popular_show
        self.where("rating = ?", self.highest_rating).first
        # Show.order(rating: :desc).first
    end
    def self.lowest_rating
        self.minimum("rating")
    end
    def self.least_popular_show
        Show.order(rating: :asc).first
    end
    def self.ratings_sum
        Show.sum("rating")
    end
    def Show::popular_shows
        Show.where("rating > ?", 5)
    end
    def self.shows_by_alphabetical_order
        Show.order(name: :asc)
    end
end