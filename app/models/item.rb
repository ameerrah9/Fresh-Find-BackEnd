class Item < ApplicationRecord
  belongs_to :list, optional: true
  validates :content, presence: true
end
