class Bar < ApplicationRecord
  belongs_to :foo
  validates :name, presence: true
  validates :description, presence: true, length: { minimum: 10 }
end
