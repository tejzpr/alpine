#!/bin/bash
adduser -D $1
echo "permit $1 as root" > /etc/doas.d/doas.conf
cd /home/$1
mv /root/runAs.sh /home/$1/runAs.sh
chsh $1 -s /bin/bash
export USERNAME=$1
shift

su $USERNAME -c "~/runAs.sh $@"

