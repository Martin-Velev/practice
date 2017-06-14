class Subject < ApplicationRecord
  has_many :pages

  scope :visible, -> {where visible: true}
  scope :invisible, -> {where visible: false}
  scope :sorted, -> {order position: :asc}
  scope :newest, -> {order created_at: :desc}
  scope :search, ->(query) {where name: query}
  scope :sample, -> {offset(rand(Subject.count)).first}

end
