# Use the latest official image, including recent build tools
# More tags: //hub.docker.com/_/clojure/tags
FROM clojure:openjdk-8-tools-deps

# Define project and user details
ENV PROJECT=leads-tracker \
  USERNAME=docker \
  HOME=/home/docker

# Install build-tools for using make
RUN apt-get install -y \
  build-essential

# Include the source code
COPY . $HOME/$PROJECT
WORKDIR $HOME/$PROJECT

# Force a download of dependencies by compiling
# (expected to be overwritten at container runtime)
RUN make build

# Run ClojureScript at startup, and start a repl
CMD make repl

# By default, the output is served at port 9000
EXPOSE 9000
