execute 'supervisord_update' do
  command 'supervisorctl update'
  user 'root'
  action :nothing
end

template "/etc/supervisord.d/dev-app.ini" do
  source "supervisord/dev-app.conf.erb"
  mode 0644
  owner "root"
  group "root"
  notifies :run, 'execute[supervisord_update]', :delayed
end
