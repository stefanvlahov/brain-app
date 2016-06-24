class Answer < ActiveRecord::Base
  belongs_to :question
  has_many :user_answers
  has_many :users, through: :user_answers
  has_many :answer_treatments
  has_many :treatments, through: :answer_treatments

  # def impact
  #   (question.weight / 2) + multiplier
  # end

end

# 9 / 2 = 4.5
# 4.5 * -9 = -40.5

# 8 / 2 = 4
# 4 * -8 = -32

# 4.5 * -7 = -31.5

# 4 * 6 = 24

# -80
