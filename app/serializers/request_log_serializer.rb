class RequestLogSerializer < ActiveModel::Serializer
  attributes :id, :application_id, :user_id, :action, :controller, :params, :created_at
end
