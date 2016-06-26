class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable


  has_many :user_answers
  has_many :answers, through: :user_answers
  has_many :recommended_treatments
  has_many :treatments, through: :recommended_treatments

  def score
    answers = self.answers
    questions = []
    answers.order('user_answers.created_at desc').limit(4).each do |answer|
      questions << answer.question
    end

    questions_sum = 0

    questions.each do |question|
      questions_sum += question.influence_score
    end

    @answer_weight = 0

    answers.order('user_answers.created_at desc').limit(4).each do |answer|
      @answer_weight = @answer_weight + ((100 / questions_sum) * answer.impact)
    end

    50 + @answer_weight

    # questions_sum * answers.multiplier
    # answers_sum = 0
    #
    # answers.each do |answer|
    #   answers_sum += answer.impact
    # end

    # 100 * (answers_sum / questions_sum)

  end

  def treatment

  end
end
