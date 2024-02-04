# docker-ubuntu-and-apache

In the project directory use:

- docker build -t [name] .
- docker run -d [name]
- docker ps - (you see run container)
- docker inspect CONTAINER_ID | grep "IPAddress". (you see ip container)
- go web ip conteiner:ports 8080
- login dockerhub,create new token,login on you pc "docker login"
- docker tag ubuntu-and-apache kontorskiy777/ubuntu_and_apache (rename images fo docker hub directory)
- docker images (you will see 2 names with a common id) 
- docker push  kontorskiy777/ubuntu_and_apache (push directory docker hun)
- docker stop [id conteiner]
- docker rmi -f [id images]
- download you image dockerhub "docker pull kontorskiy777/ubuntu_and_apache:latest"
