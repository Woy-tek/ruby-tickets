class Event < ApplicationRecord
    validates :artist, :presence => true
    validates :price_low, :presence => true, numericality: { :greater_than_or_equal_to => 0}
    validates :price_high, :presence => true, numericality: { :greater_than_or_equal_to => 0}
    validates :event_date, :presence => true
end
