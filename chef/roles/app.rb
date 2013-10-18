name "app_server"

run_list(
  "recipe[ruby]",
  "recipe[nginx]",
  "recipe[supervisord]"
)

override_attributes(
  :nginx => {
    :default_site_enabled => false,
  }
)
