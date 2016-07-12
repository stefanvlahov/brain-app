class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :user_surveys
  has_many :user_answers, through: :user_surveys
  has_many :recommended_treatments
  has_many :treatments, through: :recommended_treatments

  def category_performance
    user_scores = []
    user_surveys.last.user_answers.each do |user_answer|
      user_scores << user_answer.answer.multiplier
    end
    user_scores

    # user_scores.each do |category|
    #   performance = category.influence_score + user_answers.answers.influence_score
    # end
    # performance
  end

  def score
    questions = []
    user_surveys.last.user_answers.each do |user_answer|
      questions << user_answer.answer.question
    end

    questions_sum = 0

    questions.each do |question|
      questions_sum += question.influence_score
    end

    @answer_weight = 0

    user_surveys.last.user_answers.each do |user_answer|
      @answer_weight = @answer_weight + ((100 / questions_sum) * user_answer.answer.impact)
    end

    50 + @answer_weight
  end

  def treatments
    treatments = []
    user_surveys.last.user_answers.each do |user_answer|
      treatments << user_answer.answer.treatments
    end
    treatment_names = []
    treatments.each do |treatment|
      treatment.each do |specific|
        treatment_names << specific
      end
    end
    freq = treatment_names.inject(Hash.new(0)) { |sum, n| sum[n] += 1 ;sum}
    freq.sort_by { |k, f| -f }[0..2]
  end

end
