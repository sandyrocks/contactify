class Contact < ApplicationRecord
  belongs_to :user

  validates :first_name, 
            :last_name,
            :mobile_number,
            :city,
            :state,
            :country, presence: true
  has_attached_file :avtar, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :avtar, content_type: /\Aimage\/.*\z/
  has_one :photo, as: :imageable
  accepts_nested_attributes_for :photo

end
