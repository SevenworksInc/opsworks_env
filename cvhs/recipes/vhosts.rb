web_app "Production" do
  server_name "production.viihive.com"
  server_aliases ["www.production.viihive.com"]
  allow_override "all"
  docroot "/srv/www/viihive_dashboard/current/"
end

web_app "GitProduction" do
  server_name "test.viihive.com"
  server_aliases ["www.test.viihive.com"]
  allow_override "all"
  docroot "/srv/www/git_tutorials/current/"
end