class Event < ApplicationRecord

    def event_date_not_from_past
        if event_date < Date.today
            errors.add('Data wydarzenia', 'nie może być z przeszłości')
        end
    end
    
    validate :event_date_not_from_past
    validates :artist, :presence => true
    validates :price_low, :presence => true, numericality: { :greater_than_or_equal_to => 0}
    validates :price_high, :presence => true, numericality: { :greater_than_or_equal_to => 0}
    validates :event_date, :presence => true
    has_many :tickets
end
