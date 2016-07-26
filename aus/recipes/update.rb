# Run an update on the box.
execute "apt-get-update" do
  command "apt-get update"
end

# Configure the Mailer
execute "configure mail" do
  command "debconf-set-selections <<< \"postfix postfix/mailname string your.hostname.com\""
  command "debconf-set-selections <<< \"postfix postfix/main_mailer_type string 'Internet Site'\""
  command "apt-get install -y postfix"
end

# Configure the mcrypt
execute "php5enmod-mcrypt" do
  command "php5enmod mcrypt"
end
