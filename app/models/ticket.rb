class Ticket < ApplicationRecord
    validates :name, :presence => true, :length => { :minimum => 3 }
    validates :email_address, :presence => true, :length => { :minimum => 3 }
    validates :seat_id_seq, :presence => true
    validates :address, :presence => true, :length => { :minimum => 6 }
    validates :price, :presence => true
    validates :phone, :length => { :minimum=> 9}, numericality: { only_integers: true}
end
