# Roles
Role.find_or_create_by(role_name: "Admin")
Role.find_or_create_by(role_name: "User")

# Starting limits set
Limit.create(min_value: 1, max_value: 5000)

# Allowed accounts type
AccountType.find_or_create_by(name: "Mobile money", short_name: "MOMO", currency: "Cedis")
AccountType.find_or_create_by(name: "Bank account", short_name: "BANK", currency: "Cedis")
AccountType.find_or_create_by(name: "Short code", short_name: "USSD", currency: "Cedis")
AccountType.find_or_create_by(name: "Alipay account", short_name: "ALI", currency: "RMB")
AccountType.find_or_create_by(name: "WeChat account", short_name: "WEC", currency: "RMB")
AccountType.find_or_create_by(name: "Bank account", short_name: "BaNK", currency: "RMB")

# Admin
User.create!(username: "Alfred Tally", role_id: 1, email: "alfredtally56@gmail.com", password: "Alfred")
