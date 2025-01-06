#create amazonlinux ec2 with t2.micro and 30 gb of ebs with port 8081 


sudo yum install java-17-amazon-corretto -y
sudo mkdir /app && cd /app
sudo wget -O nexus.tar.gz https://download.sonatype.com/nexus/3/latest-unix.tar.gz
sudo tar -xvf nexus.tar.gz
sudo mv nexus-3* nexus
sudo adduser nexus
sudo chown -R nexus:nexus /app/nexus
sudo chown -R nexus:nexus /app/sonatype-work
sudo echo "run_as_user="nexus"" > /app/nexus/bin/nexus.rc:wq!
sudo chkconfig nexus on
sudo systemctl start nexus
sudo systemctl status nexus

