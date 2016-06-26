class Treatment < ActiveRecord::Base
  has_and_belongs_to_many :answers
  has_many :recommended_treatments
  has_many :users, through: :recommended_treatments
end
