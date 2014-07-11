echo "#########################################"
echo "# MARKKOM Installer for TYPO3.CMS 6.2.x #"
echo "#########################################"

echo "Roooarrr!"
echo "#########################################"
echo "# STEP 1 [BEGIN]                        #"
echo "#########################################"

git clone https://github.com/FluidTYPO3/flux.git --depth 1 typo3/typo3conf/ext/flux
cd typo3/typo3conf/ext/flux 
git checkout master
cd ../../../../
git clone https://github.com/FluidTYPO3/fluidpages.git --depth 1 typo3/typo3conf/ext/fluidpages
cd typo3/typo3conf/ext/fluidpages
git checkout master
cd ../../../../
git clone https://github.com/FluidTYPO3/fluidcontent.git --depth 1 typo3/typo3conf/ext/fluidcontent
cd typo3/typo3conf/ext/fluidcontent 
git checkout master
cd ../../../../
git clone https://github.com/FluidTYPO3/vhs.git --depth 1 typo3/typo3conf/ext/vhs
cd typo3/typo3conf/ext/vhs
git checkout master
cd ../../../../
git clone https://github.com/FluidTYPO3/builder.git --depth 1 typo3/typo3conf/ext/builder
cd typo3/typo3conf/ext/builder
git checkout master
cd ../../../../

php53 ./typo3/typo3/cli_dispatch.phpsh extbase extension:install flux
php53 ./typo3/typo3/cli_dispatch.phpsh extbase extension:install fluidpages
php53 ./typo3/typo3/cli_dispatch.phpsh extbase extension:install fluidcontent
php53 ./typo3/typo3/cli_dispatch.phpsh extbase extension:install vhs
php53 ./typo3/typo3/cli_dispatch.phpsh extbase extension:install builder
