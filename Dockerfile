FROM nginx:latest

# ADD ./conf/default.conf /etc/nginx/conf.d/default.conf
ADD ./_build/html /usr/share/nginx/html
