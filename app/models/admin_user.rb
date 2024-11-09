class AdminUser < ApplicationRecord
  def self.ransackable_attributes(auth_object = nil)
    column_names - %w[encrypted_password reset_password_token reset_password_sent_at remember_created_at image_attachment image_blob]
  end

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable,
         :recoverable, :rememberable, :validatable
end
