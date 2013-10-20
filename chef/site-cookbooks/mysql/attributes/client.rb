case node['platform_family']
when 'fedora'
  default['mysql']['server']['packages'] = %w[community-mysql]
else
  default['mysql']['server']['packages'] = %w[mysql]
end
