name "database"

run_list(
  "recipe[mysql::server]"
)

override_attributes(
  :mysql => {
    :server_root_password => "root",
    :server_repl_password => "root",
    :server_debian_password => "root"
  }
)
