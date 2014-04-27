#!/bin/bash
###########################################################################################
# Complete Nameless setup script for Debian/Ubuntu Systems         			  #
###########################################################################################
sed -i 's/main$/main universe/' /etc/apt/sources.list
apt-get -qq update
apt-get install -y python-software-properties software-properties-common bsdmainutils curl file screen
apt-get purge openjdk-\* icedtea-\* icedtea6-\* -y
add-apt-repository ppa:webupd8team/java -y
apt-get -qq update
apt-get install oracle-java7-installer -y
update-java-alternatives -s java-7-oracle
apt-get install oracle-java7-set-default
apt-get install -y bison build-essential curl flex git-core gnupg gperf libesd0-dev libncurses5-dev libsdl1.2-dev libwxgtk2.8-dev libxml2 libxml2-utils lzop pngcrush schedtool squashfs-tools xsltproc zip zlib1g-dev
apt-get install -y g++-multilib gcc-multilib lib32ncurses5-dev lib32readline-gplv2-dev lib32z1-dev
apt-get install -y tig
apt-get -qqy upgrade
curl http://commondatastorage.googleapis.com/git-repo-downloads/repo > /usr/bin/repo
chmod a+x /usr/bin/repo
