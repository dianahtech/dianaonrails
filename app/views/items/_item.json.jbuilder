json.extract! item, :id, :name, :weight, :value, :available, :durl, :ean, :offer, :buy_limit, :created_at, :updated_at
json.url item_url(item, format: :json)
