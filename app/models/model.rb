class Model < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :messages       
     attr_accessible  :description, :camera, :name, :is_online
  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me
  attr_accessor :camera, :image, :password, :description
  attr_accessor  :is_new, :price, :registration_required

  mount_uploader :image, ImageUploader  
end