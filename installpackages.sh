


<<INFO  this we use to install packages  
INFO



echo "Installing $1"

sudo apt-get update && sudo apt-get upgrade -y

sudo apt-get install $1 -y

echo "Installing Completed"

echo "This is your script name :  $0"


