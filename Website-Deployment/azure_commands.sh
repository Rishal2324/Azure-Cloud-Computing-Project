#!/bin/bash
# Azure Cloud Computing Major Project
# Student: Rishal Panda

# --- Task 4: Azure Blob Storage Operations ---
# Create the mount directory
sudo mkdir -p /mnt/blobstorage

# (Note: The specific blobfuse mount command is hidden for security)

# Verifying the Blob Storage Mount
df -h | grep blobstorage

# creating test files in Blob Storage
echo "Hello from Azure Blob Storage Rishal Panda" | sudo tee /mnt/blobstorage/test.txt
sudo mkdir /mnt/blobstorage/testfolder
echo "This is Task 4 Blob Storage" | sudo tee /mnt/blobstorage/testfolder/info.txt

# List the files to confirm
ls -lR /mnt/blobstorage/


# --- Task 5: Azure File Share (SMB) Operations ---
# Create the mount point
sudo mkdir -p /mnt/myfileshare

# Mount the File Share (Using CIFS/SMB)
# This connects the 38GB Quota File Share to the Linux VM
sudo mount -t cifs //rishalstorage.file.core.windows.net/myfileshare /mnt/myfileshare -o credentials=/etc/smbcredentials/rishalstorage.cred,dir_mode=0777,file_mode=0777,serverino,nosharesock,actimeo=30

# Verify the 38GB Quota is visible
df -h | grep myfileshare
