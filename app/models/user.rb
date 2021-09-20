class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  # attr_accessor :email, :encrypted_password, :password_confirmation
  # validates_presence_of :encrypted_password, on: :create
  # validates_presence_of :email
  # has_secure_password
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable


end
