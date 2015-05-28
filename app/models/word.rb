class Word < ActiveRecord::Base
  has_many :results, dependent: :destroy
  has_many :answer, dependent: :destroy
  belongs_to :category

  validates :content, presence: true, length: {maximum: Settings.maximum1}
  validates :category_id, presence: true
end
