Role.find_or_create_by(role_name: "Admin")
Role.find_or_create_by(role_name: "User")

Limit.create(min_value: 1, max_value: 5000)