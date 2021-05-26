
#############################################################
'''
Problem Description

1. List contents of a directory.
2. Classify directory content by file extention:
 Example: 3 PDF Files, 5 Json files, 6 exe files, 3 dll files.
3. If the file type matches exe, dll then generate and print hash of those files.
4. OPTIONAL: Print signing information of exe and dll files.
'''

#############################################################
import os
import hashlib
#import requests
#import signify.authenticode.SignedPE
import subprocess
from subprocess import PIPE
#from signify import authenticode
from collections import Counter
#################################################
# Start of function to calculate hash
#################################################
def hash_file(filename):
    """"This function returns the SHA-1 hash
    of the file passed into it"""

    # make a hash object
    h = hashlib.sha1()

    # open file for reading in binary mode
    with open(filename ,'rb') as file:

        # loop till the end of the file
        chunk = 0
        while chunk != b'':
            # read only 1024 bytes at a time
            chunk = file.read(1024)
            h.update(chunk)

    # return the hex representation of digest
    return h.hexdigest()

#################################################
# End of function to calculate hash
#################################################


#################################################
# Start of function to find the file is signed or not
#################################################
'''def isitSinged(file):

    with open(file, "rb") as f:
        pefile = SignedPEFile(f)
        print(pefile.verify())
'''
def run(cmd):
    completed = subprocess.run(["powershell", "-Command", cmd], universal_newlines=True, stdout=PIPE, stderr=PIPE)
    #result = completed.communicate()[0]
    #print(completed)
    #lines = completed.stdout.splitlines()
    #print(lines)
    '''for line in lines:
        print(str(line).strip("b\'\'"))
    '''
    return completed.stdout
###################################################
# Main program
###################################################
directories = os.listdir(os.path.dirname(os.path.abspath(__file__)))  # returns list
# print(directories)
filenames = []
fileExtentions = []
# Variable to store executable file details
exeFilesDetails = [["Exe FileName" ,"Sha256 Hash Of File", "SigningInfo"]]
dllFilesDetails = [["Dll FileName" ,"Sha256 Hash of File" ,"SigningInfo"]]
for file in directories:
    # print(os.path.splitext(file))
    filename, fileExtention = os.path.splitext(file)
    # print(type(fileExtention))
    if fileExtention == ".exe":
        # print("Executable")
        filehash = hash_file(file)
        cmd = "Get-AuthenticodeSignature " + "\"" + file + "\""
        attributes =[file, filehash, run(cmd)]
        exeFilesDetails.append(attributes)

    if fileExtention == ".dll":
        # print("This is Dll")
        filehash = hash_file(file)
        cmd = "Get-AuthenticodeSignature " + "\"" + file + "\""
        attributes = [file, filehash, run(cmd)]
        dllFilesDetails.append(attributes)
    fileExtentions.append(fileExtention)
    filenames.append([filename])
####################################################################
# 1. Print Files classified into file types and count of file types.
####################################################################
filesbyType = Counter(fileExtentions)
for i in filesbyType:
    if i == '':
        continue
    print("Number of", i, "Files =", filesbyType[i])

#####################################################################
# print(filenames)
# print(fileExtentions)
# print(Counter(fileExtentions))
'''for i in range(len(exeFilesDetails)):
    for j in range(len(exeFilesDetails[i])):
        print(exeFilesDetails[i][j], end = " ")
    print()
'''
################################################################
# Print Hash Of Exe files
################################################################
s = [[str(e) for e in row] for row in exeFilesDetails]
lens = [max(map(len, col)) for col in zip(*s)]
fmt = '\t'.join('{{:{}}}'.format(x) for x in lens)
table = [fmt.format(*row) for row in s]
print('\n'.join(table))
# print(exeFilesDetails)
################################################################
# Print Hash Of dll files
################################################################
s = [[str(e) for e in row] for row in dllFilesDetails]
lens = [max(map(len, col)) for col in zip(*s)]
fmt = '\t'.join('{{:{}}}'.format(x) for x in lens)
table = [fmt.format(*row) for row in s]
print('\n'.join(table))

###END###
