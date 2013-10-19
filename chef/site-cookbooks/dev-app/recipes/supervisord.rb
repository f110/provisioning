template "/etc/supervisord.d/dev-app.ini" do
  source "supervisord/dev-app.conf.erb"
  mode 0644
  owner "root"
  group "root"
end

execute 'supervisorctl update' do
  user 'root'
end
