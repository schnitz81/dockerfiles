# web-upload
#
# Web interface for uploading file to server.

FROM alpine:3.22
RUN apk --no-cache update && apk add --no-cache nginx php83 php83-fpm sed apache2-utils netcat-openbsd

# setup folders and users
RUN mkdir /www \
    && mkdir /upload \
    && adduser -D -g 'www' www \
    && chown -R www:www /www \
    && chown -R www:www /upload \
    && chown -R www:www /var/lib/nginx

# Defining ENV variables which will be used in configuration
ENV PHP_FPM_USER="www"
ENV PHP_FPM_GROUP="www"
ENV PHP_FPM_LISTEN_MODE="0660"
ENV PHP_MEMORY_LIMIT="512M"
ENV PHP_MAX_UPLOAD="5G"
ENV PHP_MAX_FILE_UPLOAD="5G"
ENV PHP_MAX_POST="5G"
ENV PHP_DISPLAY_ERRORS="On"
ENV PHP_DISPLAY_STARTUP_ERRORS="On"
ENV PHP_ERROR_REPORTING="E_COMPILE_ERROR\|E_RECOVERABLE_ERROR\|E_ERROR\|E_CORE_ERROR"
ENV PHP_CGI_FIX_PATHINFO=0
ENV PHP_MAX_INPUT_TIME=99999
ENV PHP_MAX_EXECUTION_TIME=99999
ENV NGINX_MAX_BODY_SIZE="5G"



# Modifying configuration file www.conf
RUN sed -i "s|^[\;]\{0,1\}listen.owner.*|listen.owner = ${PHP_FPM_USER}|g" /etc/php83/php-fpm.d/www.conf \
    && sed -i "s|^[\;]\{0,1\}listen.group.*|listen.group = ${PHP_FPM_GROUP}|g" /etc/php83/php-fpm.d/www.conf \
    && sed -i "s|^[\;]\{0,1\}listen.mode.*|listen.mode = ${PHP_FPM_LISTEN_MODE}|g" /etc/php83/php-fpm.d/www.conf \
    && sed -i "s|^[\;]\{0,1\}user.*|user = ${PHP_FPM_USER}|g" /etc/php83/php-fpm.d/www.conf \
    && sed -i "s|^[\;]\{0,1\}group.*|group = ${PHP_FPM_GROUP}|g" /etc/php83/php-fpm.d/www.conf \
    && sed -i "s|^[\;]\{0,1\}log_level.*|log_level = notice|g" /etc/php83/php-fpm.d/www.conf

# Modifying configuration file php.ini
RUN sed -i "s|^[\;]\{0,1\}display_errors.*|display_errors = ${PHP_DISPLAY_ERRORS}|i" /etc/php83/php.ini \
    && sed -i "s|^[\;]\{0,1\}display_startup_errors.*|display_startup_errors = ${PHP_DISPLAY_STARTUP_ERRORS}|i" /etc/php83/php.ini \
    && sed -i "s|^[\;]\{0,1\}error_reporting.*|error_reporting = ${PHP_ERROR_REPORTING}|i" /etc/php83/php.ini \
    && sed -i "s|^[\;]\{0,1\}memory_limit.*|memory_limit = ${PHP_MEMORY_LIMIT}|i" /etc/php83/php.ini \
    && sed -i "s|^[\;]\{0,1\}upload_max_filesize.*|upload_max_filesize = ${PHP_MAX_UPLOAD}|i" /etc/php83/php.ini \
    && sed -i "s|^[\;]\{0,1\}max_file_uploads.*|max_file_uploads = ${PHP_MAX_FILE_UPLOAD}|i" /etc/php83/php.ini \
    && sed -i "s|^[\;]\{0,1\}post_max_size.*|post_max_size = ${PHP_MAX_POST}|i" /etc/php83/php.ini \
    && sed -i "s|^[\;]\{0,1\}cgi.fix_pathinfo.*|cgi.fix_pathinfo= ${PHP_CGI_FIX_PATHINFO}|i" /etc/php83/php.ini \
    && sed -i "s|^[\;]\{0,1\}max_input_time.*|max_input_time = ${PHP_MAX_INPUT_TIME}|i" /etc/php83/php.ini \
    && sed -i "s|^[\;]\{0,1\}max_execution_time.*|max_execution_time = ${PHP_MAX_EXECUTION_TIME}|i" /etc/php83/php.ini

ADD nginx.conf /etc/nginx/nginx.conf

# Modifying configuration file nginx.conf
RUN sed -i "/http\ {/a \ \ \ \ \ \ \ \ client_max_body_size $NGINX_MAX_BODY_SIZE;" /etc/nginx/nginx.conf

COPY app /www
ADD startup.sh /startup.sh
RUN chmod +x /startup.sh

EXPOSE 80


ENTRYPOINT ["/startup.sh"]


# Build cmd
# docker build -t web-upload .
#
# Run cmd:
# $ docker run --name web-upload -d -v /host/folder:/upload -p 8888:80 web-upload user password
#
# Change host folder and port 8888 to desired host port to expose.
# The www user needs write access to the host folder.
