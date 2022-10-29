# frozen_string_literal: true

class NativeUser < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable,  :trackable,
  devise :database_authenticatable, 
         :registerable,
         :confirmable,        
         :recoverable, 
         :rememberable, 
         :validatable

  include DeviseTokenAuth::Concerns::User
end
