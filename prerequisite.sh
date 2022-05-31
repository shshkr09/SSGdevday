#install java
sudo yum install java -y
#install python
sudo yum install python3 -y
#install mysql client
sudo yum install mysql -y
#install Faker and kafka-python module
pip3 install kafka-python
pip3 install Faker
#port 9092 should be accesible for the vm where application is running to interact with kafka
sudo firewall-cmd --zone=public --add-port=9092/tcp --permanent
firewall-cmd --reload
