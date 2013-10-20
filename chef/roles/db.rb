name "database"

run_list(
  "recipe[mysql::server]"
)

override_attributes(
)
