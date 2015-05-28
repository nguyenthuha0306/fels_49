class Lesson < ActiveRecord::Base
  has_many :results, dependent: :destroy
  belongs_to :user
  belongs_to :category

  validates :user_id, presence: true
  validates :category_id, presence: true
end
