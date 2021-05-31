curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
chmod +x wp-cli.phar
echo WP.CLI ist nutzbar
wp core download
wp config create --dbname=d0369158 --dbuser=d0369158 --dbpass=secure
echo wp db create
wp core install --url=test108511.test-account.com --title=TestSeite --admin_user=admin --admin_password=adminpsw --admin_email=becker-janik@web.de
echo Die Basis Installation von WordPress ist abgeschlossen
echo Ab Hier werden Themes und Plugins gelöscht und Installiert
wp theme install blocksy kadence --activate
wp theme delete twentytwentyone twentytwenty twentynineteen
wp plugin delete hello akismet antispam-bee wp-mail-smtp
wp plugin install kadence-blocks --activate stackable-ultimate-gutenberg-blocks --activate cookie-law-info --activate 


wp plugin instll matomo --activate cachify --activate crazy-lazy --activate