require 'pry'
class Show < ActiveRecord::Base

    def self.highest_rating
        rating = 0
        show = nil
        self.all.each do |x|
            if x.rating > rating
                rating = x.rating
                show = x
            end
        end
        rating
    end

    def self.most_popular_show
        rating = 0
        show = nil
        self.all.each do |x|
            if x.rating > rating
                rating = x.rating
                show = x
            end
        end
        show
    end

    def self.lowest_rating
        rating = 10
        show = nil
        self.all.each do |x|
            if x.rating < rating
                rating = x.rating
                show = x
            end
        end
        rating
    end

    def self.least_popular_show
        rating = 10
        show = nil
        self.all.each do |x|
            if x.rating < rating
                rating = x.rating
                show = x
            end
        end
        show
    end

    def self.ratings_sum
        rating = 10
        show = nil
        self.all.each do |x|
            if x.rating < rating
                rating += x.rating
                show = x
            end
        end
        rating
    end

    def self.popular_shows
        rating = 5
        show = []
        self.all.collect do |x|
            if x.rating >= rating
                show << x
            end
        end
        show
    end

    def self.shows_by_alphabetical_order
        self.all.sort_by { |hash| hash[:name] }
    end
end