class TextLogSerializer < ActiveModel::Serializer
  attributes :application_id, :text, :created_at
  has_many :tags
end
