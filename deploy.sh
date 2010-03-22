#/bin/bash
set -x
NAME=growin
APACHEMASTER=/opt/rails
APACHE_DEPLOY=/etc/apache2/vhosts.d
APPROOTDIR=${APACHEMASTER}/applications/${NAME}
DOMAIN=fumasoftware.webhop.net
ADMIN_USER=jamal

sudo -u appserver `pwd`/deploy_vhost.sh
cp ${APACHEMASTER}/apps-enabled/${NAME} ${APACHE_DEPLOY}/${NAME}.conf
apache2ctl restart
