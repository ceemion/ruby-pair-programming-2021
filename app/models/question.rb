class Question < ApplicationRecord
  has_many :answers
  belongs_to :user

  scope :public_questions,-> { where(is_private: false) }
end
