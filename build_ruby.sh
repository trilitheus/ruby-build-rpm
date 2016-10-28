cd /tmp
wget https://cache.ruby-lang.org/pub/ruby/2.1/ruby-2.1.9.tar.gz
tar xzf ruby-2.1.9.tar.gz
cd ruby-2.1.9
./configure --prefix /usr/local
make
make install DESTDIR=/tmp/installdir
cd /tmp/destdir
fpm -s dir -t rpm -n ruby -v 2.1.9 -C /tmp/installdir -p ruby-VERSION_ARCH.rpm usr/local/bin usr/local/share/man usr/local/lib usr/local/include
