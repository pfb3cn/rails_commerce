class User < ActiveRecord::Base
  has_secure_password
  has_many :orders, dependent: :destroy
  validates :first_name, :last_name, presence:true
  validates :email, presence:true, format:{ with:/\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i }, uniqueness:{ case_sensitive:false }
end
