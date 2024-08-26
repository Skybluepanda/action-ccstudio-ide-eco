# Base Image
FROM uoohyo/ccstudio-ide:latest
RUN apt-get update && apt-get install -y python3 python3-pip git && ln -s /usr/bin/python3 /usr/bin/python
RUN apt-mark hold git
RUN apt-mark hold git-man
RUN git config --system --add safe.directory *

# File Copy
COPY entrypoint.sh /entrypoint.sh

# Set execute permission for the entrypoint script
RUN chmod +x /entrypoint.sh

# Entry Point
ENTRYPOINT ["/entrypoint.sh"]
