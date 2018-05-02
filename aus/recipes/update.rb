# Run an update on the box.
execute "apt-get-update" do
  comamnd "sudo apt-get install software-properties-common python-software-properties -y"
  command "apt-add-repository ppa:ondrej/php5-5.6"
  command "apt-get update"
end

# # Configure the Mailer
# execute "configure-mail" do
  # command "debconf-set-selections <<< 'postfix postfix/mailname string production.viihive.com'"
  # command "debconf-set-selections <<< 'postfix postfix/main_mailer_type string \"Internet Site\"'"
  # command "apt-get install -y postfix"
  # command "apt-get install mailutils -y"
# end

# Configure the mcrypt
execute "php5enmod-mcrypt" do
  command "php5enmod mcrypt"
end
