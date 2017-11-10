RUBY_VERSION='2.3.5'
MAJOR_MINOR=$(echo $RUBY_VERSION | cut -f1,2 -d'.')

cd /tmp
wget https://cache.ruby-lang.org/pub/ruby/${MAJOR_MINOR}/ruby-${RUBY_VERSION}.tar.gz
tar xzf ruby-${RUBY_VERSION}.tar.gz
cd ruby-${RUBY_VERSION}
./configure --prefix /usr/local --includedir=/usr/local/lib/ruby/include
make
make install DESTDIR=/tmp/installdir
cd /tmp/destdir
usr/local/bin/gem install bundle --no-ri --no-rdoc
fpm -s dir -t rpm -n ruby -f -v ${RUBY_VERSION} -C /tmp/installdir -p ruby-VERSION_ARCH.rpm usr/local/bin usr/local/share/man usr/local/lib
