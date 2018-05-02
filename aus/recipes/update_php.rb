
execute "apt-get-update-php" do
  command "add-apt-repository ppa:ondrej/php5-5.6"
  command "apt-get update"
  command "apt-get install php5.6 php5.6-mbstring php5.6-mcrypt php5.6-mysql php5.6-xml -y"
  command "a2dismod php5"
  command "a2enmod php5.6"
  command "service apache2 restart"
end
