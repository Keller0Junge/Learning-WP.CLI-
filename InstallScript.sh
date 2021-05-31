curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
chmod +x wp-cli.phar
echo WP.CLI ist nutzbar

wp core download
wp config create --dbname=d0369158 --dbuser=d0369158 --dbpass=secure
echo wp db create

wp core install --url=test108511.test-account.com --title=TestSeite --admin_user=admin --admin_password=adminpsw --admin_email=test@web.de

echo Die Basis Installation von WordPress ist abgeschlossen
echo Ab Hier werden Themes und Plugins gelöscht und Installiert

wp theme install blocksy
wp theme install kadence --activate

wp theme delete twentytwentyone
wp theme delete twentytwenty
wp theme delete twentynineteen

wp plugin delete hello
wp plugin delete akismet
wp plugin delete antispam-bee
wp plugin delete wp-mail-smtp

wp plugin install kadence-blocks --activate
wp plugin install stackable-ultimate-gutenberg-blocks --activate
wp plugin install cookie-law-info --activate 

wp plugin instll matomo --activate
wp plugin instll cachify --activate
wp plugin instll crazy-lazy --activate