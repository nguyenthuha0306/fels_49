class Result < ActiveRecord::Base
  belongs_to :lesson
  belongs_to :word
  belongs_to :answer

  validates :lesson_id, presence: true
  validates :word_id, presence: true
  validates :answer_id, presence: true
end
