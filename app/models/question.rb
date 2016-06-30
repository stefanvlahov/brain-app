class Question < ActiveRecord::Base
  belongs_to :category
  belongs_to :user_survey
  has_many :answers

  def weight
    category.influence_score
  end

end
