cd /tmp
wget https://cache.ruby-lang.org/pub/ruby/2.3/ruby-2.3.3.tar.gz
tar xzf ruby-2.3.3.tar.gz
cd ruby-2.3.3
./configure --prefix /usr/local --includedir=/usr/local/lib/ruby/include
make
make install DESTDIR=/tmp/installdir
cd /tmp/destdir
fpm -s dir -t rpm -n ruby -f -v 2.3.3 -C /tmp/installdir -p ruby-VERSION_ARCH.rpm usr/local/bin usr/local/share/man usr/local/lib
#fpm -s dir -t rpm -n ruby -f -v 2.1.9 -C /tmp/installdir -p ruby-VERSION_ARCH.rpm usr/local/bin usr/local/share/man usr/local/lib usr/local/include
