# Use the latest official image, including recent build tools
# More tags: //hub.docker.com/_/clojure/tags
FROM clojure:openjdk-8-tools-deps

# Define project and user details
ENV PROJECT=leads-tracker \
  USERNAME=docker \
  HOME=/home/docker

# Include the source code
COPY ./hello-world $HOME/$PROJECT/hello-world
WORKDIR $HOME/$PROJECT/hello-world

# Force a download of dependencies by compiling
# (expected to be overwritten at container runtime)
RUN clojure -m cljs.main -O advanced -c hello-world.core

# Run ClojureScript at startup, and start a repl
CMD [ \
  "clojure", \
    "-m", "cljs.main", \
    "-c", "hello-world.core", \
    "-r" \
  ]

# By default, the output is served at port 9000
EXPOSE 9000
