json.extract! admin_account, :id, :user_id, :account_type_id, :acount_number, :account_name, :created_at, :updated_at
json.url admin_account_url(admin_account, format: :json)
