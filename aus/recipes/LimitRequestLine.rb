append_if_no_line "LimitRequestLine" do
  path "/etc/apache2/apache2.conf"
  line "LimitRequestLine 10000"
end
