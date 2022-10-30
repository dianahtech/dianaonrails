class ItemSerializer < ActiveModel::Serializer
  attributes :id, :name, :weight, :value,:avaiable,:durl,:ean,:offer,:buy_limit,:section,:created_at
end
