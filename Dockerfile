FROM poste.io/mailserver:latest
RUN apt-get update && apt-get install less  # 'less' is Useful for debugging

# Default to listening only on IPs bound to the container hostname
ENV LISTEN_ON=host
ENV SEND_ON=

COPY files /
RUN /patches && rm /patches
