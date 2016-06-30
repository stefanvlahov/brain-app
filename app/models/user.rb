class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :user_surveys
  has_many :user_answers, through: :user_surveys
  has_many :recommended_treatments
  has_many :treatments, through: :recommended_treatments

  def score
    # answers = self.answers
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

    # questions_sum * answers.multiplier
    # answers_sum = 0
    #
    # answers.each do |answer|
    #   answers_sum += answer.impact
    # end

    # 100 * (answers_sum / questions_sum)

  end

  # def last_survey_treatments
  #   Treatment.joins(answers: {user_answers: :user_survey}).where('user_surveys.id = ?', user_surveys.last.id)
  # end

  def treatments
    treatments_array = []
    user_surveys.last.user_answers.answer.each do |answer|
      treatments_array << answer.treatments
    end

    freq = treatments_array.inject(Hash.new(0)) { |sum, n| sum[n] += 1 ;sum}
    max = freq.values.max
    freq.select { |k, f| f == max }
    # treatments = []
    # user_surveys.last.user_answers.each do |user_answer|
    #   treatments << user_answer.answer.treatments
    # end
    # treatment_names = []
    # treatments.each do |treatment|
    #   treatment.each do |specific|
    #     treatment_names << specific.name
    #   end
    # end
    # freq = treatment_names.inject(Hash.new(0)) { |sum, n| sum[n] += 1 ;sum}
    # max = freq.values.max
    # freq.select { |k, f| f == max }
  end

  # def treatment_descriptions
  #   treatments = []
  #   user_surveys.last.user_answers.each do |user_answer|
  #     treatments << user_answer.answer.treatments
  #   end
  #   treatment_descriptions = []
  #   treatments.each do |treatment|
  #     treatment.each do |specific|
  #       treatment_descriptions << specific.description
  #     end
  #   end
  #   freq = treatment_descriptions.inject(Hash.new(0)) { |sum, n| sum[n] += 1 ;sum}
  #   max = freq.values.max
  #   freq.select { |k, f| f == max }
  # end
end
