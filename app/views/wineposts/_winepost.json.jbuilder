json.extract! winepost, :id, :name, :created_at, :updated_at
json.url winepost_url(winepost, format: :json)