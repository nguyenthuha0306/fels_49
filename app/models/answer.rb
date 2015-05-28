class Answer < ActiveRecord::Base
  has_many :results, dependent: :destroy
  belongs_to :word

  validates :content, presence: true, length: {maximum: Settings.answer.content.maximum}
  validates :word_id, presence:true
end
