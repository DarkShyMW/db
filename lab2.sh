echo "Если вы не укажите пароль перед использованием, скрипт может сломаться!"
echo "Для отмены работы - ctrl z"
sleep 10
sudo su -
sudo groupadd -g 50000 database
sudo useradd -G database dbuser1
sudo passwd dbuser1
redhat
sudo chage -d 0 dbuser1
sudo chage -m 10 dbuser1
sudo chage -M 30 dbuser1

sudo echo "dbuser1 ALL=(ALL) ALL" >> /etc/sudoers.d/dbuser1

sudo su - dbuser1
echo "umask 007" » .bash_profile
echo "umask 007" » .bashrc
exit

mkdir /home/student/grading/review2
chown student:database /home/student/grading/review2
chmod g+s /home/student/grading/review2
chmod 775 /home/student/grading/review2
chmod o+t /home/student/grading/review2

exit
