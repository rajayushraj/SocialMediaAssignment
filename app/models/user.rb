class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :fname ,presence: true,length: { minimum: 3,maximum: 25}
  validates :lname ,presence: true,length: { minimum: 3,maximum: 25}
  validates :acc_status,presence: true,:inclusion => { :in => 0..2 }
end
