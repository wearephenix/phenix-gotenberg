FROM gotenberg/gotenberg:8.23.1
USER root
COPY ./fonts/* /usr/local/share/fonts/
USER gotenberg
