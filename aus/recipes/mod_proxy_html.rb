if node['apache']['version'] != '2.4' && node['platform_family'] == 'debian'
  package 'libapache2-mod-proxy-html'
end

apache_module 'proxy_html'
