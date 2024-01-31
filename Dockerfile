FROM gotenberg/gotenberg:8.0.2
USER root
COPY ./fonts/* /usr/local/share/fonts/
USER gotenberg
