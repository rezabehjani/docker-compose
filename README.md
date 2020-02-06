# image docker-compose fileshare


*  stap 1
make file name docker_file_share

* stap 2
open notpad write
```
import os
print (os.getcwd())
print (os.listdir())
f = open("file_share.txt", "a")
f.write("Now the file has more content!\r\n")
f.close()

#open and read the file after the appending:
f = open("file_share.txt", "r")
print(f.read()) 

f = open("file_share.txt", "a")
f.write("reza\r\n")
f.close()

```
save name index.py

*  stap 3
open notpad and write
```
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


```
save file whit name Dockerfile

*  stap 4
open notpad write
```
version: '3'
services:
  sharefile:
    build: .
    volumes:
    - ~/docker_file_share/file_share.txt:/docker_file_share/file_share.txt

  redis:
    image: "python_test_share"
```

* stap 5
open terminal in file
```
sudo docker-compose up

```

