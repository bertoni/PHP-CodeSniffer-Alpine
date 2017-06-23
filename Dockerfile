FROM php:7.0-alpine

MAINTAINER Arnaldo Bertoni Júnior <arnaldo.bertoni01@fatec.sp.gov.br>

# Envinroment variables
ENV USER_HOST abertoni
ENV USER_UID  1000
ENV USER_GID  1000

# Create user
RUN adduser -D -u ${USER_UID} -g ${USER_GID} ${USER_HOST}

# Upate and install packages
RUN apk update \
    && apk upgrade \
    && apk add --no-cache patch \
    && pear install PHP_CodeSniffer-3.0.0

# Clear caches
RUN rm -rf /var/cache/apk/*


CMD ["phpcs"]
