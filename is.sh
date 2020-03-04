FikkerInstallDir="/root" # default installation directory
FikkerNewVersion="fikkerd-3.8.0-linux-x86-64" # package name
service iptables stop 2> /dev/null ; chkconfig iptables off 2> /dev/null ; service httpd stop 2> /dev/null ; service nginx stop 2> /dev/null ; chkconfig httpd off 2> /dev/null ; chkconfig nginx off 2> /dev/null ; systemctl stop firewalld.service 2> /dev/null ; systemctl disable firewalld.service 2> /dev/null ; systemctl stop httpd.service 2> /dev/null ; systemctl stop nginx.service 2> /dev/null ; systemctl disable httpd.service 2> /dev/null ; systemctl disable nginx.service 2> /dev/null ; yum -y install wget ; cd $FikkerInstallDir ; wget -c --no-check-certificate https://github.com/wartw/ssr-nistall/raw/master/$FikkerNewVersion.tar.gz && tar zxf $FikkerNewVersion.tar.gz && rm -rf $FikkerNewVersion.tar.gz && cd $FikkerNewVersion && ./fikkerd.sh install && ./fikkerd.sh start && cd $FikkerInstallDir && sleep 5 && echo 'finished!'
