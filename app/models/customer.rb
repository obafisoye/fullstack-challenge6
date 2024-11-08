class Customer < ApplicationRecord
  has_one_attached :image

  validates :full_name, presence: true

  def self.ransackable_attributes(auth_object = nil)
    %w[id full_name email_address phone_number notes image_attachment image_blob]
  end

  def self.ransackable_associations(auth_object = nil)
    %w[image_attachment image_blob]
  end
end
