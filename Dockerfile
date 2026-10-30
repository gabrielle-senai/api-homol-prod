FROM nginx:alpine

ARG AMBIENTE=local

COPY index.html /usr/share/nginx/html/index.html
RUN sed -i "s/__AMBIENTE__/${AMBIENTE}/g" /usr/share/nginx/html/index.html

EXPOSE 80