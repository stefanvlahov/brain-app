class Question < ActiveRecord::Base
  belongs_to :category
  has_many :answers

  def weight
    category.influence_score
  end

end
