#make image ubutu
FROM ubuntu

#run command in terminal 
RUN apt update && apt install -y python3 

WORKDIR /docker_file_share
COPY file_share.txt ./docker_file_share


#add scripy python 
#Note : python file in side dockerfile exist
ADD index.py /docker_file_share


#Dockerfile to execute the script:
#tells Docker to execute the command when the image loads.
CMD [ "python3", "/docker_file_share/index.py" ]

#for excute in terminul 
#sudo docker build -t python_test_share .

#sudo docker run --rm -ti -v ~/docker_file_share/file_share.txt:/docker_file_share/file_share.txt python_test_share
#~ = /home/reza


#-v Docker volumes can be used to share files between a host system and the Docker container.
#source host linux : source continer

#-d detaches the process and runs it in the background. 


#source https://www.digitalocean.com/community/tutorials/how-to-share-data-between-the-docker-container-and-the-host
