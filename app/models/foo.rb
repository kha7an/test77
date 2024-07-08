class Foo < ApplicationRecord
  has_many :bars, dependent: :destroy
  validates :name, presence: true
  validates :description, presence: true, length: { minimum: 10 }
end
