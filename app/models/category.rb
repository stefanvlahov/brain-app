class Category < ActiveRecord::Base
  has_many :questions
  has_many :answers, through: :questions

  # def question_total
  #   questions.sum
  # end
  #
  # def self.influence_total
  #   self.questions.sum(:influence_score)
  # end

end
