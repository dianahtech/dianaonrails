class OrderedItem < ApplicationRecord         
    belongs_to :store_user
    belongs_to :native_user
end
