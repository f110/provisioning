node['mysql']['server']['packages'].each do |name|
  package name do
    action :install
  end
end
