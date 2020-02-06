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

