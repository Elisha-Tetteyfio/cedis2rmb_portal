# Roles
Role.find_or_create_by(role_name: "Admin")
Role.find_or_create_by(role_name: "User")

# Starting limits set
Limit.create(min_value: 1, max_value: 5000)

# Allowed accounts type
AccountType.find_or_create_by(name: "Mobile money", short_name: "MOMO")
AccountType.find_or_create_by(name: "Bank account", short_name: "BANK")
AccountType.find_or_create_by(name: "Alipay account", short_name: "ALI")
