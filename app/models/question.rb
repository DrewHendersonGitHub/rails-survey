class Question < ApplicationRecord
  belongs_to :survey
  validates :name, presence: true
  validates_length_of :name, maximum: 100
  before_save(:titleize_question)

  private
    def titleize_question
      self.name = self.name.titleize
    end
end