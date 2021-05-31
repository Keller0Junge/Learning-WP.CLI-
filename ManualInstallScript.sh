echo -e "\033[45mWillkomen beim Installations Script\033[0m."
echo -e "\033[35mSoll WP.CLI Installiert werden?\033[0m."
echo -e "\033[35mNotwendig fals noch nicht Installiert!\033[0m."
echo -e "\033[33m1: Ja\033[0m."
echo -e "\033[33m2: Nein\033[0m."
read wpcli
if [ $wpcli == 1 ]
then
    curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
    chmod +x wp-cli.phar
fi
echo -e "\033[35mSoll WordPress Installiert werden?\033[0m."
echo -e "\033[33m1: Ja\033[0m."
echo -e "\033[33m2: Nein\033[0m."
read WP
if [ $WP == 1 ]
then
    wp core download
    echo -e "\033[35mBitte Datenbank NAME angeben.\033[0m."
    read dbname
    echo -e "\033[35mBitte Datenbank USER angeben.\033[0m."
    read dbuser
    echo -e "\033[35mBitte Datenbank PASSWORD angeben.\033[0m."
    read dbpsw
    wp config create --dbname=$dbname --dbuser=$dbuser --dbpass=$dbpsw
    echo wp db create
    echo -e "\033[35mBitte Hompage URL angeben.\033[0m."
    read hpurl
    echo -e "\033[35mBitte Hompage TITEL angeben.\033[0m."
    read hptitel
    echo -e "\033[35mBitte Admin USER angeben.\033[0m."
    read adminuser
    echo -e "\033[35mBitte Admin PASSWORD angeben.\033[0m."
    read adminpsw
    echo -e "\033[35mBitte Admin EMAIL angeben.\033[0m."
    read adminemail
    wp core install --url=$hpurl --title=$hptitel --admin_user=$adminuser --admin_password=$adminpsw --admin_email=$adminemail
    echo -e "\033[45mDie Basis Installation von WordPress ist abgeschlossen\033[0m."
fi    
echo -e "\033[35mWelches Theme möchten Sie Installieren?\033[0m."
echo -e "\033[33m1: Blocksy\033[0m."
echo -e "\033[33m2: Kadence\033[0m."
read theme
if [ $theme == 1 ]
then
    wp theme install blocksy --activate
    wp theme delete twentytwentyone twentytwenty twentynineteen
fi
if [ $theme == 2 ]
then
    wp theme install kadence --activate
    wp theme delete twentytwentyone twentytwenty twentynineteen
fi
wp plugin delete hello akismet antispam-bee wp-mail-smtp
wp plugin install kadence-blocks --activate stackable-ultimate-gutenberg-blocks --activate cookie-law-info --activate 
wp plugin install matomo --activate cachify --activate crazy-lazy --activate