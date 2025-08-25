class Tree < ApplicationRecord
  # FriendlyId for readable URLs
  extend FriendlyId
  friendly_id :name, use: :slugged
   
  # Associations
  belongs_to :user

  # Validations
  validates :name, presence: true, length: { minimum: 3, maximum: 50 }
  validates :instagram, presence: true, format: { with: /\A[a-zA-Z0-9_.]{1,30}\z/, message: "should be a valid Instagram handle without @ symbol" }, allow_blank: false
  validates :youtube, format: { with: /\A[a-zA-Z0-9_-]{1,100}\z/, message: "should be a valid YouTube channel handle" }, allow_blank: true
  validates :x, format: { with: /\A[a-zA-Z0-9_]{1,15}\z/, message: "should be a valid X (Twitter) handle without @ symbol" }, allow_blank: true
  validates :style, inclusion: { in: ["default", "dark", "light", "colorful", "minimal"], message: "%{value} is not a valid style" }, allow_blank: true
  
  # Set default style if not specified
  before_validation :set_default_style
  
  private
  
  def set_default_style
    self.style ||= "default"
  end
end
