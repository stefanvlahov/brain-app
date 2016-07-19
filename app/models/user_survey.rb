class UserSurvey < ActiveRecord::Base
  belongs_to :user
  has_many :user_answers
  has_many :answers, through: :user_answers
end
