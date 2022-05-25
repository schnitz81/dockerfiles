FROM busybox
RUN echo "#!/bin/sh" > /hello-world.sh \
    && echo >> /hello-world.sh \
    && echo "function print_hello_world(){" >> /hello-world.sh \
    && echo "    echo" >> /hello-world.sh \
    && echo "    echo \"  _     _ _______                _____   \"" >> /hello-world.sh \
    && echo "    echo \"  |_____| |______ |      |      |     |  \"" >> /hello-world.sh \
    && echo "    echo \"  |     | |______ |_____ |_____ |_____|  \"" >> /hello-world.sh \
    && echo "    echo \"  _  _  _  _____   ______        ______  \"" >> /hello-world.sh \
    && echo "    echo \"  |  |  | |     | |_____/ |      |     \\ \"" >> /hello-world.sh \
    && echo "    echo \"  |__|__| |_____| |    \\_ |_____ |_____/ \"" >> /hello-world.sh \
    && echo "    echo" >> /hello-world.sh \
    && echo "}" >> /hello-world.sh \
    && echo >> /hello-world.sh \
    && echo "if [ \"\$1\" == \"-c\" ] || [ \"\$1\" == \"--continuous\" ]; then" >> /hello-world.sh \
    && echo "    while true; do" >> /hello-world.sh \
    && echo "        print_hello_world" >> /hello-world.sh \
    && echo "        sleep 5" >> /hello-world.sh \
    && echo "    done" >> /hello-world.sh \
    && echo "else" >> /hello-world.sh \
    && echo "    print_hello_world" >> /hello-world.sh \
    && echo "fi" >> /hello-world.sh \
    && chmod +x /hello-world.sh
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
