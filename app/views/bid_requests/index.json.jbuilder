json.array!(@bid_requests) do |bid_request|
  json.extract! bid_request, :id, :user_id, :pick_up_street, :pick_up_city_state, :pick_up_zip, :drop_off_street, :drop_off_city_state, :drop_off_zip, :pick_up_date, :pick_up_time, :drop_off_date, :drop_off_time
  json.url bid_request_url(bid_request, format: :json)
end
