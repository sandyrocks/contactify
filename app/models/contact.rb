class Contact < ApplicationRecord
  belongs_to :user

  validates :first_name, 
            :last_name,
            :mobile_number,
            :city,
            :state,
            :country, presence: true
end
