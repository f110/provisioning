name "app_server"

run_list(
  "recipe[nginx]",
  "recipe[supervisord]"
)
