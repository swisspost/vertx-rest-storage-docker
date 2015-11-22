FROM java:8
MAINTAINER florian kammermann "florian@kammermann.me"

ENV VERTX_VERSION 2.1.6
RUN curl -sSL https://bintray.com/artifact/download/vertx/downloads/vert.x-$VERTX_VERSION.tar.gz | tar xzf - -C /usr/share/
ENV PATH /usr/share/vert.x-$VERTX_VERSION/bin:$PATH

ENV REST_STORAGE_VERSION 1.2.3
RUN curl -sL http://search.maven.org/remotecontent?filepath=li/chee/vertx/rest-storage/$REST_STORAGE_VERSION/rest-storage-$REST_STORAGE_VERSION-mod.zip -o /usr/lib/rest-storage-$REST_STORAGE_VERSION-mod.zip

# the port where the rest-storage will listen on
EXPOSE 8989

CMD ["vertx", "runzip", "/usr/lib/rest-storage-1.2.3-mod.zip"]
