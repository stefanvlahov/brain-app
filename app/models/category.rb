class Category < ActiveRecord::Base
  has_many :questions
  has_many :answers, through: :questions
  has_many :user_answers, through: :answers
  has_many :user_surveys, through: :user_answers

  # def performance
  #   survey = user_surveys.last
  #
  #   total = []
  #
  #   survey.user_answers.each do |user_answer|
  #     total << user_answer.answer.multiplier
  #   end
  #
  #   total
  # end

end
