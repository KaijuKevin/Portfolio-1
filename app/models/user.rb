class User < ActiveRecord::Base
  has_attached_file :avatar, :styles => {
     :medium => "300x300>",
     :thumb => "100x100#" },
     :default_url => "/images/default.jpg",
     :storage => :s3,
     :bucket => 'zagorouiko',
     :url => "/:image/:id/:style/:basename.:extension",
     :path => "/:image/:id/:style/:basename.:extension"
  validates_attachment_content_type :avatar, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]

  has_many :comments
  has_many :recommendations
  validates :username, presence: true, uniqueness: true
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
