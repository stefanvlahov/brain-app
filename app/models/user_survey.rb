class UserSurvey < ActiveRecord::Base
  belongs_to :user
  has_many :user_answers
end
