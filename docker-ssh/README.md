# Connect to container via SSH

Try to connect to a running container using SSH

## How-to

```bash
sudo docker run --name proba -it ubuntu
apt update         # Now we are inside the container
apt install -y openssh-server
service ssh start
adduser user        # Create a new user
echo $(hostname -I) # Check container ip

# Open a new terminal
ssh 172.17.0.2 -l user # Enter the password you set previously
```