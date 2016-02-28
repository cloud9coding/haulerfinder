json.array!(@horses) do |horse|
  json.extract! horse, :id, :breed, :age, :height, :weight, :bid_request_id
  json.url horse_url(horse, format: :json)
end
