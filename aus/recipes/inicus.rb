# Replace php.ini file.
template '/etc/php5/apache2/php.ini' do
  source "php.ini.erb"
end

#override['php']['directives'] = {
#  :memory_limit => '128M',
#  :post_max_size => '16M',
#  :upload_max_filesize => '12M',
#  :date.timezone => 'Asia/Manila'
#}
