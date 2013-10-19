template "/etc/nginx/sites-available/dev-app" do
  source "nginx/dev-app"
  mode 0644
  owner "root"
  group "root"
  notifies :reload, 'service[nginx]'
end

nginx_site 'dev-app' do
  enable true
end
