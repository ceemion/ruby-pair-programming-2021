class QuestionSerializer < ActiveModel::Serializer
  attributes :id, :title, :is_private
  has_many :answers
  belongs_to :user
end
