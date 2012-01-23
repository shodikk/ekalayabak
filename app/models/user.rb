class User < ActiveRecord::Base
 attr_accessible :user_id, :uploaded_file
  has_many :assets
  belongs_to :user
  #set up "uploaded_file" field as attached_file (using Paperclip)  
  has_attached_file :uploaded_file  
  
  validates_attachment_size :uploaded_file, :less_than => 10.megabytes    
  validates_attachment_presence :uploaded_file  

  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me
  validates :email, :presence => true, :uniqueness => true 
end
