FROM busybox
RUN echo "#!/bin/sh" > /hello-world.sh
RUN echo >> /hello-world.sh
RUN echo "function print_hello_world(){" >> /hello-world.sh
RUN echo "    echo" >> /hello-world.sh
RUN echo "    echo \"  _     _ _______                _____   \"" >> /hello-world.sh
RUN echo "    echo \"  |_____| |______ |      |      |     |  \"" >> /hello-world.sh
RUN echo "    echo \"  |     | |______ |_____ |_____ |_____|  \"" >> /hello-world.sh
RUN echo "    echo \"  _  _  _  _____   ______        ______  \"" >> /hello-world.sh
RUN echo "    echo \"  |  |  | |     | |_____/ |      |     \\ \"" >> /hello-world.sh
RUN echo "    echo \"  |__|__| |_____| |    \\_ |_____ |_____/ \"" >> /hello-world.sh
RUN echo "    echo" >> /hello-world.sh
RUN echo "}" >> /hello-world.sh
RUN echo >> /hello-world.sh
RUN echo "if [ \"\$1\" == \"-c\" ] || [ \"\$1\" == \"--continuous\" ]; then" >> /hello-world.sh
RUN echo "    while true; do" >> /hello-world.sh
RUN echo "        print_hello_world" >> /hello-world.sh
RUN echo "        sleep 5" >> /hello-world.sh
RUN echo "    done" >> /hello-world.sh
RUN echo "else" >> /hello-world.sh
RUN echo "    print_hello_world" >> /hello-world.sh
RUN echo "fi" >> /hello-world.sh
RUN chmod +x /hello-world.sh
ENTRYPOINT ["/hello-world.sh"]

# Command examples:
#
# Build docker image:
# $ docker build . -t hello-world
#
# Run container and remove after exit:
# $ docker run --rm hello-world
#
# Add continuous parameter to print message every 5 seconds instead of exiting:
# $ docker run --rm hello-world -c
