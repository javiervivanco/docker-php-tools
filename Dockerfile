FROM alpine:latest
 
#---------------------------
#
#---------------------------
ADD https://cloud.github.com/downloads/Behat/Behat/behat.phar    /php/bin/behat
ADD https://squizlabs.github.io/PHP_CodeSniffer/phpcs.phar /php/bin/phpcs
ADD https://squizlabs.github.io/PHP_CodeSniffer/phpcbf.phar    /php/bin/phpcbf
ADD https://getcomposer.org/composer.phar                  /php/bin/composer
ADD https://phar.phpunit.de/phpunit.phar                   /php/bin/phpunit
ADD https://phar.phpunit.de/phpcpd.phar                    /php/bin/phpcpd
ADD https://phar.phpunit.de/phpdcd.phar                    /php/bin/phpdcd
#ADD https://phar.phpunit.de/phploc.phar                    /php/bin/phploc
ADD http://static.phpmd.org/php/latest/phpmd.phar          /php/bin/phpmd
ADD http://static.pdepend.org/php/latest/pdepend.phar      /php/bin/pdepend
ADD http://www.phing.info/get/phing-latest.phar            /php/bin/phing
RUN chmod +x /php/bin/composer \
             /php/bin/phpunit  \
             /php/bin/phpcpd   \
             /php/bin/phpdcd   \
             /php/bin/phpcbf   \
             /php/bin/phing    \
             /php/bin/phpcs    \
             /php/bin/pdepend  \
             /php/bin/phpmd    \
             /php/bin/behat
VOLUME /php
#RUN export PATH=$PATH:/root/.composer/vendor/bin/
 
