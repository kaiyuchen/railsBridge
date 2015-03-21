json.array!(@topiccs) do |topicc|
  json.extract! topicc, :id, :title, :desc
  json.url topicc_url(topicc, format: :json)
end
