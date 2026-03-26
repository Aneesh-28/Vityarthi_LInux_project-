#!/bin/bash
# Script 2: FOSS Package Inspector
PACKAGE="python3"  # use lowercase for apt

# Check if package is installed
if dpkg -l "$PACKAGE" &>/dev/null; then
    echo "$PACKAGE is installed."
    apt-cache show "$PACKAGE" | grep -E 'Version|Homepage|Description'
else
    echo "$PACKAGE is NOT installed."
fi

case $PACKAGE in
httpd)   echo "Apache: the web server that built the open internet" ;;
mysql)   echo "MySQL: open source at the heart of millions of apps" ;;
# Add your software and 3 others below:
python3) echo "Python3: the language powering AI and automation" ;;
vlc)     echo "VLC: the universal media player for everyone" ;;
firefox) echo "Firefox: the open-source browser fighting for the web" ;;
git)     echo "Git: the version control backbone of open source" ;;
esac#!/bin/bash
# Script 2: FOSS Package Inspector
PACKAGE="Python3" # e.g. httpd, mysql, vlc, firefox
# Check if package is installed
if rpm -q $PACKAGE &>/dev/null; then
echo "$PACKAGE is installed."
rpm -qi $PACKAGE | grep -E 'Version|License|Summary'
else
echo "$PACKAGE is NOT installed."
fi
# TODO: Add a case statement that prints a one-line
# philosophy note about the package based on its name
case $PACKAGE in
httpd) echo "Apache: the web server that built the open internet" ;;
mysql) echo "MySQL: open source at the heart of millions of apps" ;;
# TODO: Add your software and 3 others
esac
