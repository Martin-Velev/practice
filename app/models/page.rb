class Page < ApplicationRecord
  belongs_to :subject
  has_and_belongs_to_many :users

  scope :sample, -> {offset(rand(Page.count)).first}
end
