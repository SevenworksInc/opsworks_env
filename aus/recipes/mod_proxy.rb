apache_module 'proxy' do
  conf true
  if node['platform'] == 'ubuntu' && node['platform_version'].to_f == 12.04
    restart true
  end
end
