class Contact < ApplicationRecord
  validates :first_name, presence: true
  validates :last_name, presence: true

  belongs_to :user

  def friendly_updated_at
    updated_at.strftime("%B %e, %Y")
  end

  def full_name
    last_name + " , " + first_name
  end

  def japan_phone_number
    "+81" + phone_number
  end
end
