json.array!(@exits) do |exit|
  json.extract! exit, :id
  json.url exit_url(exit, format: :json)
end
