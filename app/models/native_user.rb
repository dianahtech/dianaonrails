# frozen_string_literal: true

class NativeUser < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, 
         :registerable,
         :confirmable,
         :trackable,
         :recoverable, 
         :rememberable, 
         :validatable

  include DeviseTokenAuth::Concerns::User
end
