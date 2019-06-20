open('/etc/apache2/apache2.conf', 'a') do |f|
  f << "LimitRequestLine 10000\n"
  f << "LimitRequestFieldSize 10000\n"
end
