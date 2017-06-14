class Section < ApplicationRecord
  has_many :section_edits
  has_many :users, through: :section_edits


  scope :sample, -> {offset(rand(Section.count)).first}
end
