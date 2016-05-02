class TextLogSerializer < ActiveModel::Serializer
  attributes :application_id, :text, :created_at, :ip_address
  has_many :tags
end
