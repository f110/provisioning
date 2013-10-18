name "app_server"

run_list(
  "recipe[ruby]",
  "recipe[nginx]",
  "recipe[supervisord]"
)
