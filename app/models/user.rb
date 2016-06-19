class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable


  has_many :user_answers
  has_many :answers, through: :user_answers
  has_many :recommended_treatments
  has_many :treatments, through: :recommended_treatments

end
