class Ticket < ApplicationRecord

    def price_in_scope
        if (price > event.price_high) || (price < event.price_low)
            errors.add('Cena', 'nie może być z poza przyjętego zakresu')
        end
    end

    validate :price_in_scope

    validates :name, :presence => true, :length => { :minimum => 3 }
    validates :email_address, :presence => true, :length => { :minimum => 3 }
    validates :seat_id_seq, :presence => true
    validates :address, :presence => true, :length => { :minimum => 6 }
    validates :price, :presence => true
    validates :phone, :length => { :minimum=> 9}, numericality: { only_integers: true}
    belongs_to :event
    belongs_to :user
end
