FROM admin/node

RUN \
  apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 7F0CEB10 && \
  echo 'deb http://downloads-distro.mongodb.org/repo/debian-sysvinit dist 10gen' > /etc/apt/sources.list.d/mongodb.list && \
  apt-get update && \
  apt-get install -y mongodb-org 

RUN mkdir -p /data/db
RUN echo "bind_ip = 0.0.0.0" >> /etc/mongodb.conf

# Define mountable directories.
#VOLUME ["/data/db"]

# Define working directory.
#WORKDIR /data

# Define default command.
#CMD ["mongod"]

# Expose ports.
#   - 27017: process
#   - 28017: http
EXPOSE 27017
EXPOSE 28017
