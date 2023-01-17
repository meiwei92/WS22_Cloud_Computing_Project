FROM mongo:3
MAINTAINER Michael Weikl

COPY create_users.sh /docker-entrypoint-initdb.d/z_create_users.sh
RUN chmod a+rx /docker-entrypoint-initdb.d/z_create_users.sh

COPY init_piggymetrics.sh /docker-entrypoint-initdb.d/_init_piggymetrics.sh
RUN chmod a+rx /docker-entrypoint-initdb.d/_init_piggymetrics.sh

RUN mkdir /dumps 
ADD ./dump /dumps
RUN chmod a+r -R /dumps 

