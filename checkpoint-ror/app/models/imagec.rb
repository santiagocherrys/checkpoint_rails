class Imagec < ApplicationRecord

  #this is for active storage
  has_one_attached :avatar

  #validations
  validates :name, presence: true, length: {maximum: 80}
  validates :description, presence: true, length: {maximum: 150}

  #custom validation
  validate :image_type

  private

  def image_type
    # Check if the avatar is attached
    unless avatar.attached?
      errors.add(:avatar, I18n.t("imagecs.missing"))
      return # Stop further checks if no avatar is attached
    end
  
    # Validate the content type if an avatar is attached
    # for using t outside of view and controllers layer use I18n
    unless avatar.content_type.in?(%w(image/jpeg image/png))
      errors.add(:avatar, I18n.t("imagecs.wrong_file"))
    end
  end
  

end
