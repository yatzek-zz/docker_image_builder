FROM insready/bazel
COPY . /usr/src/app
ENV HOME /home/jenkins
RUN cd /usr/src/app && bazel fetch //...