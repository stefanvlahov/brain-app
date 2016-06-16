class Treatment < ActiveRecord::Base
  has_many :answer_treatments
  has_many :answers, through: :answer_treatments
  has_many :recommended_treatments
  has_many :users, through: :recommended_treatments
end
