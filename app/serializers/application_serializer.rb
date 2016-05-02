class ApplicationSerializer < ActiveModel::Serializer
  attributes :id, :name, :token, :active, :created_at
end
