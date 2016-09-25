json.extract! task_keeper, :id, :title, :description, :created_at, :updated_at
json.url task_keeper_url(task_keeper, format: :json)