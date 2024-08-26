# Base Image
FROM uoohyo/ccstudio-ide:latest
RUN apt-get update && apt-get install -y python3 python3-pip && ln -s /usr/bin/python3 /usr/bin/python

# File Copy
COPY entrypoint.sh /entrypoint.sh

# Set execute permission for the entrypoint script
RUN chmod +x /entrypoint.sh

# Entry Point
ENTRYPOINT ["/entrypoint.sh"]
