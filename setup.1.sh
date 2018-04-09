apt-get install \
    apt-transport-https \
    ca-certificates \
    curl \
    software-properties-common

   curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

   add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"
   apt-get update
   apt-get install docker-ce

   curl -L https://github.com/docker/compose/releases/download/1.20.1/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose
   chmod +x /usr/local/bin/docker-compose

   add-apt-repository ppa:certbot/certbot
   apt-get update
   apt-get install certbot


    echo "-----------installed version check-----------"
    echo "docker         >> $(docker --version)"
    echo "docker-compose >> $(docker-compose --version)"
    echo "certbot        >> $(certbot --version)"