class AnswerSerializer < ActiveModel::Serializer
  attributes :id, :body, :user
  belongs_to :user

  def user
    User.select(:id, :name).find_by(id: object.user_id)
  end
end
