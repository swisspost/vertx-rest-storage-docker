FROM java:8
MAINTAINER florian kammermann "florian@kammermann.me"

RUN curl -sSL https://bintray.com/artifact/download/vertx/downloads/vert.x-2.1.6.tar.gz | tar xzf - -C /usr/share/
ENV PATH /usr/share/vert.x-2.1.6/bin:$PATH

# download the rest-storage from maven central
RUN curl -sL http://search.maven.org/remotecontent?filepath=li/chee/vertx/rest-storage/1.2.3/rest-storage-1.2.3-mod.zip -o /usr/lib/rest-storage-1.2.3-mod.zip

# the port where the rest-storage will listen on
EXPOSE 8989

CMD ["vertx", "runzip", "/usr/lib/rest-storage-1.2.3-mod.zip"]
