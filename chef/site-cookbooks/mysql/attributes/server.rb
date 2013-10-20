case node['platform_family']
when 'fedora'
  default['mysql']['server']['packages'] = %w[community-mysql-server]
else
  default['mysql']['server']['packages'] = %w[mysql-server]
end
