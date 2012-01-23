class Asset < ActiveRecord::Base
  attr_accessible :user_id
  belongs_to :user  

 def file_name  
    uploaded_file_file_name  
 end 
end
