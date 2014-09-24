json.array!(@residentials) do |residential|
  json.extract! residential, :id, :user_id, :status, :contract, :product_id
  json.url residential_url(residential, format: :json)
end
