template "/etc/nginx/sites-available/dev-app" do
  source "nginx/dev-app"
  mode 0644
  owner "root"
  group "root"
end

link "/etc/nginx/sites-enabled/dev-app" do
  to "/etc/nginx/sites-available/dev-app"
  notifies :reload, 'service[nginx]'
end
