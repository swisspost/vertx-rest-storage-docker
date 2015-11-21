FROM java:8
MAINTAINER florian kammermann "florian@kammermann.me"

# download the rest-storage from maven central
RUN curl -s http://search.maven.org/remotecontent?filepath=li/chee/vertx/rest-storage/1.2.3/rest-storage-1.2.3-mod.zip -o /usr/share/rest-storage-1.2.3-mod.zip

CMD ["vertx runzip /usr/share/rest-storage-1.2.3-mod.zip"]
