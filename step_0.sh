#!/usr/bin/env bash
    
# phase one: core install

VERSION=6.2.3
DOMAIN=deploy.domain.markkom.net

echo "#########################################"
echo "# MARKKOM Installer for TYPO3.CMS 6.2.x #"
echo "#########################################"

echo "Roooarrr!"
echo "#########################################"
echo "# STEP 0 [BEGIN]                        #"
echo "#########################################"

# cd
cd ~/$DOMAIN/

# make dirs
mkdir typo3
mkdir typo3_src
ls -all -h

# fetch stable TYPO3.CMS-6.2.x from github
cd typo3_src
wget 'https://github.com/TYPO3/TYPO3.CMS/archive/$VERSION.tar.gz'
tar -xf $VERSION.tar.gz
ls -all -h

cd ../
cd typo3

# create symbolic links and index.php
ln -s ../typo3_src/TYPO3.CMS-$VERSION typo3_src
   
touch index.php
echo -e "<?php require_once('typo3_src/index.php') ?>" > index.php
ln -s typo3_src/typo3 typo3

# copy .htaccess
cp typo3_src/_.htaccess .htaccess

# touch first install
touch FIRST_INSTALL

cd ..

echo "#########################################"
echo "# STEP 0 [END]                          #"
echo "#########################################"

echo "Now open the TYPO3 backend and complete the install wizard"
echo "Remember: You must add the _cli_lowlevel backend user!"
read -p "Press any key to continue AFTER you complete the install wizard and create the _cli_lowlevel user"
