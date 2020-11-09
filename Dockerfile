FROM webdevops/php-nginx:7.2

ARG PSR_VERSION=1.0.0
ARG PHALCON_VERSION=4.1.0
ARG PHALCON_EXT_PATH=php7/64bits


RUN set -xe && \
    # Download PSR, see https://github.com/jbboehr/php-psr
    curl -LO https://github.com/jbboehr/php-psr/archive/v${PSR_VERSION}.tar.gz && \
    tar xzf ${PWD}/v${PSR_VERSION}.tar.gz && \
    # Download Phalcon
    curl -LO https://github.com/phalcon/cphalcon/archive/v${PHALCON_VERSION}.tar.gz && \
    tar xzf ${PWD}/v${PHALCON_VERSION}.tar.gz && \
    docker-php-ext-install -j $(getconf _NPROCESSORS_ONLN) \
        ${PWD}/php-psr-${PSR_VERSION} \
        ${PWD}/cphalcon-${PHALCON_VERSION}/build/${PHALCON_EXT_PATH} \
    && \
    # Remove all temp files
    rm -r \
        ${PWD}/v${PSR_VERSION}.tar.gz \
        ${PWD}/php-psr-${PSR_VERSION} \
        ${PWD}/v${PHALCON_VERSION}.tar.gz \
        ${PWD}/cphalcon-${PHALCON_VERSION} \
    && \
    php -m

ENV WEB_DOCUMENT_ROOT=/var/www/html/application

RUN mkdir /app1 && echo 'php /var/www/html/application/cli.php mail' > /app1/test.sh && chmod +x /app1/test.sh
RUN mkdir /app2 && echo 'php /var/www/html/application/cli.php notification' > /app2/test.sh && chmod +x /app2/test.sh

RUN echo "*/30 * * * * root /app1/test.sh > /proc/1/fd/1 2>/proc/1/fd/2" >> /etc/crontab
RUN echo "*/30 * * * * root /app2/test.sh > /proc/1/fd/1 2>/proc/1/fd/2" >> /etc/crontab