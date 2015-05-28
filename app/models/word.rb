class Word < ActiveRecord::Base
  has_many :results, dependent: :destroy
  has_many :answer, dependent: :destroy
  belongs_to :category

  validates :content, presence: true, length: {maximum: Settings.word.content.maximum}
  validates :category_id, presence: true
end
