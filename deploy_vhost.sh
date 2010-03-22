#/bin/bash
set -x
NAME=growin
APACHEMASTER=/opt/rails
APACHE_DEPLOY=/etc/apache2/vhosts.d
APPROOTDIR=${APACHEMASTER}/applications/${NAME}
DOMAIN=fumasoftware.webhop.net
ADMIN_USER=jamal
# Move old installation out of the way
mv -v ${APPROOTDIR} `date "+${APPROOTDIR}.%s"` 2>/dev/null

#JMN fix create non-extant directories
mkdir -p ${APPROOTDIR} ${APACHEMASTER}/apps-enabled


# Copy stuff 
cp -rL  Rakefile app config db doc lib log public script test tmp vendor ${APPROOTDIR}

# Setup the alias directive
cat << __EOF__ > ${APACHEMASTER}/apps-enabled/${NAME}

Listen 80
NameVirtualHost *:80

#
## Allow unlimited keepalive requests
Timeout 300 
KeepAlive On
MaxKeepAliveRequests 0 
KeepAliveTimeout 15
#
##MinSpareServers 5
##MaxSpareServers 10
StartServers 5
#
## This figure is important - adjust based on RAM availabilty 
## & the footprint of the apache processes
MaxClients 15
#
User appserver
Group appserver

HostnameLookups Off

#Alias /${NAME} ${APPROOTDIR}/public
<VirtualHost *:80>
    DocumentRoot ${APPROOTDIR}/public
    ServerName localhost
#    ServerName ${NAME}.${DOMAIN}
    ServerAlias *.${NAME}.${DOMAIN}
    ServerPath ${APPROOTDIR}/public
    ServerAdmin ${ADMIN_USER}@${DOMAIN}

    <Directory "${APPROOTDIR}/public/">
            Options Indexes FollowSymLinks
            AllowOverride All
            Order allow,deny
            Allow from all
    </Directory>

    <IfModule alias_module>
            ScriptAlias /cgi-bin/ "${APPROOTDIR}/cgi-bin/"
    </IfModule>

    <Directory "${APPROOTDIR}/cgi-bin">
            AllowOverride None
            Options None
            Order allow,deny
            Allow from all
    </Directory>
</VirtualHost>
__EOF__


echo cp ${APACHEMASTER}/apps-enabled/${NAME} ${APACHE_DEPLOY}/${NAME}.conf


# Force images links to be relative in the deployed version (the 
# RewriteRule in the .htaccess file will take care of this)


#cat lib/ajax_scaffold.rb | \
#    sed 's/\/images/images/g' > ${APPROOTDIR}/lib/ajax_scaffold.rb
#
#for i in `find app/helpers/ -name *.rb`
#do 
#    cat $i | sed 's/\/images/images/g' > ${APPROOTDIR}/$i
#done 
#
#cat public/stylesheets/ajax_scaffold.css | \
#    sed 's/\/images/images/g' > \
#        ${APPROOTDIR}/public/stylesheets/ajax_scaffold.css
#
## Nuke any .svn directories that came along for the ride
#find  ${APPROOTDIR} -type d -name '.svn' -exec rm -rf {}  \; 2>/dev/null   
#
