class TextLog < ApplicationRecord
  belongs_to :application
  has_many :tags, -> { order 'created_at desc' }
end
