FROM centos:7.3.1611
RUN yum install -y \
  gcc \
  make \
  openssl-devel \
  readline-devel \
  rpm-build \
  ruby \
  ruby-devel \
  wget \
  zlib-devel 
RUN gem install fpm
