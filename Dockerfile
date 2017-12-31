#FROM insready/bazel
#COPY . /usr/src/app
#ENV HOME /home/jenkins
#RUN cd /usr/src/app && bazel fetch //...

FROM yatzek/bazel:0.9.0-alpine
COPY . /image_builder
ENV HOME /home/jenkins
# TODO: should all deps be cached (bazel fetch -- //...) rather than fetched on every run ???
# TODO: is it possible to fetch all deps except the docker image(s) ???
RUN cd /image_builder && bazel fetch -- //...