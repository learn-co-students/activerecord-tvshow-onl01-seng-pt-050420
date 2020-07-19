class Show < ActiveRecord::Base

    def self.highest_rating
    Show.maximum(:rating)
    end

    def self.most_popular_show
    max = Show.highest_rating
    show = Show.find_by("rating = #{max}")
    show
    end

    def self.lowest_rating
    Show.minimum(:rating)
    end

    def self.least_popular_show
        min = Show.lowest_rating
        show = Show.find_by("rating = #{min}")
        show
    
    end

    def self.ratings_sum
    Show.sum(:rating)
    end

    def self.popular_shows
    shows = Show.where("rating >= 5")
    shows
    end

    def self.shows_by_alphabetical_order
    shows = Show.order(:name)
    shows
    end

end