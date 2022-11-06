# frozen_string_literal: true

class NativeUser < ActiveRecord::Base
  
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable,  :trackable, :confirmable, 
  devise :database_authenticatable, 
  :registerable,                
  :recoverable, 
  :rememberable, 
  :validatable
  has_many :ordered_items


  include DeviseTokenAuth::Concerns::User
  #include DeviseTokenAuth::Concerns::SetUserByToken

end
