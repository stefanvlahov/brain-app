class UserAnswer < ActiveRecord::Base
  belongs_to :answer
  belongs_to :user

  def brain_score
    return 50
  end
end
