class Challenge < ActiveRecord::Base
  validates :title, presence: true

  has_and_belongs_to_many :questions
  accepts_nested_attributes_for :questions
end
