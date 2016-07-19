class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :user_surveys
  has_many :user_answers, through: :user_surveys
  has_many :recommended_treatments
  has_many :treatments, through: :recommended_treatments

  def diet_positive?
    all_answers = UserSurvey.last.answers
    selected_answers = all_answers.select{ |answer| answer.category.name == "Diet"}
    @diet_score = 0
    selected_answers.each { |answer| @diet_score += answer.multiplier }
    @diet_score > 0
  end

  def diet_score
    all_answers = UserSurvey.last.answers
    selected_answers = all_answers.select{ |answer| answer.category.name == "Diet"}
    @diet_score = 0
    selected_answers.each { |answer| @diet_score += answer.multiplier }
    @diet_score
  end

  def exercise_positive?
    all_answers = UserSurvey.last.answers
    selected_answers = all_answers.select{ |answer| answer.category.name == "Exercise"}
    @exercise_score = 0
    selected_answers.each { |answer| @exercise_score += answer.multiplier }
    @exercise_score > 0
  end

  def exercise_score
    all_answers = UserSurvey.last.answers
    selected_answers = all_answers.select{ |answer| answer.category.name == "Exercise"}
    @exercise_score = 0
    selected_answers.each { |answer| @exercise_score += answer.multiplier }
    @exercise_score
  end

  def stress_positive?
    all_answers = UserSurvey.last.answers
    selected_answers = all_answers.select{ |answer| answer.category.name == "Stress"}
    @stress_score = 0
    selected_answers.each { |answer| @stress_score += answer.multiplier }
    @stress_score > 0
  end

  def stress_score
    all_answers = UserSurvey.last.answers
    selected_answers = all_answers.select{ |answer| answer.category.name == "Stress"}
    @stress_score = 0
    selected_answers.each { |answer| @stress_score += answer.multiplier }
    @stress_score
  end

  def sleep_positive?
    all_answers = UserSurvey.last.answers
    selected_answers = all_answers.select{ |answer| answer.category.name == "Sleep"}
    @sleep_score = 0
    selected_answers.each { |answer| @sleep_score += answer.multiplier }
    @sleep_score > 0
  end

  def sleep_score
    all_answers = UserSurvey.last.answers
    selected_answers = all_answers.select{ |answer| answer.category.name == "Sleep"}
    @sleep_score = 0
    selected_answers.each { |answer| @sleep_score += answer.multiplier }
    @sleep_score
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
      @answer_weight = @answer_weight + ((100 / questions_sum) * (user_answer.answer.impact * 0.585))
    end

    50 + @answer_weight.to_i
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
