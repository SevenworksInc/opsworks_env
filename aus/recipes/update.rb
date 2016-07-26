# Run an update on the box.
execute "apt-get-update" do
  command "apt-get update"
end

execute "php5enmod-mcrypt" do
  command "php5enmod mcrypt"
end
