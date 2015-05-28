class Answer < ActiveRecord::Base
  has_many :results, dependent: :destroy
  belongs_to :word

  validates :content, presence: true, length: {maximum: Settings.maximum1}
  validates :word_id, presence:true
end
