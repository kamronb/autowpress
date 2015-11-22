
#!/bin/bash 
clear
echo "This script creates all the basic files for a Wordpress Set up. When done just  paste the folder in the themes folder of the wordpress install then do your stuff"
sleep 2
clear
echo "Please enter the name of the theme and press enter"
read theme_name
echo "Gonna go ahead and create the stuff now"

mkdir $theme_name 
cd $theme_name
mkdir images scripts
touch style.css 
echo "Please enter your Name then press enter"
read name
clear
echo "Enter the URI for the theme you are building"
read theme_uri

echo "Please enter your email or web address"
read author_uri

echo "Please enter a short desription of the them you are bulding"
read theme_description

echo "/*Theme Name: "$theme_name > style.css
echo "heme URI: http://"$theme_uri >> style.css
echo "Author: "$name  >> style.css
echo "Author URI: "$author_uri  >> style.css
echo "Description: "$theme_description  >> style.css
echo "Version: 1" >> style.css
echo " */" >> style.css
touch index.php sidebar.php footer.php header.php functions.php archive.php single.php comments.php page.php search.php 404.php
ls
sleep 2
echo "If you see 12 files and 2 directories listed, guess stuff was done properly"
sleep 2
exit
